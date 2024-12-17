from scipy.io import loadmat,savemat
import numpy as np
import pandas as pd
from math import floor,ceil
from calc_freq_i_func import calc_freq_i_func
from realign_bit import realign_bit

IDLE = [0, 0, 0, 1, 0, 1, 0, 1]
STX = [0 ,0, 0, 0, 0, 1, 0, 0]
ETX = [0 ,0, 0, 0, 0, 1, 0, 1]
ETB = [0 ,0, 0, 0, 1, 1, 1, 1]

def mfskProcessAuto2ch(infile, baudrate, filter_range, dev):
    print('Loading ' + infile)
    #Read mat file from LogicAnalizer
    mdata = loadmat(infile) #Read mat file as dict.
    
    #OSCILOSCOPE: Uncomment. Read CSV file from Osciloscope
    # odata = pd.read_csv(infile,header=None)
    # odata.columns = ['t','V']
    # input_signal = odata['V'].values#[39590:110000]
    # sampling_freq = round(1/odata['t'][1])
    # num_samples_analog = len(odata)

    #OSCILOSCOPE: Uncomment. Read CSV file from Osciloscope with its software
##    odata = pd.read_csv(infile)
##    input_signal =np.array(odata['CH1'].values[1:],dtype=np.float32)
##    sampling_freq = 1/odata['Increment'][0]
##    num_samples_analog = len(input_signal)

    #LOGIG ANALIZER: Uncomment.
    input_signal_1 = np.array(mdata['analog_channel_0'].reshape(1,-1)[0])
    input_signal_2 = np.array(mdata['analog_channel_1'].reshape(1,-1)[0])
    sampling_freq = mdata['analog_sample_rate_hz'][0][0]
    num_samples_analog = mdata['num_samples_analog'][0][0]
    #TODO: implement a way to read and add all channels if present.
    save_dict = {}


    # set the frequencies
    mult1 = 1
    mult2 = 2
    mult3 = 3
    mult4 = 4
    srate = sampling_freq

    for channel,input_signal in enumerate([input_signal_1,input_signal_2]):
        print(f'Processing channel {channel}...')
        start_indx = 0#1
        i = start_indx
        i_appx = 0
        i_real = 0
        preamble_found = False
        large_fraction_threshold = 0.8
        byte_size = 8
        byte_array = np.empty(byte_size) #byte_array = nan(1, byte_size)
        byte_array[:] = np.nan #byte_array = nan(1, byte_size)
        receiving_msg = False

        message_length = 15
        current_msg = 0#1
        msg_limit = 150

        previous_i = np.nan
        realign_i = 0#1
        realign_dist = 0; 
        nsymbol = floor(srate / baudrate)

            # Adding a moving average filter
        roll_n = floor(nsymbol/4/4)
        if roll_n >= 2:
            input_signal = pd.Series(np.copy(input_signal)).rolling(roll_n).mean().iloc[roll_n-1:].values
        # input_signal = pd.Series(np.copy(input_signal)).rolling(roll_n).mean().iloc[roll_n-1:].values

        #added Miguel
        # MATLAB allows addressing arrays with indexes out of bound and create arrays on the run.
        # - To add a new row to an array of size 5, just addres row number 6, and will be filled with zeros.
        # Python Numpy requries array initialization, thus we will stack a row of zeros, an array of zeros, or 
        # and row of empty chars.
        msg_array = np.zeros(byte_size,dtype=np.int8).reshape(1,byte_size)
        msg_array_save = np.zeros(byte_size * message_length,dtype=np.int8).reshape(1,message_length,byte_size)
        msg_array_txt = np.array([' ' for i in range(message_length)],dtype='<U1').reshape(1,message_length)

        #We define the limits for the SNR for higher frequencies according to the 'dev' variable.
        SNR_threshold = {
            'lcd': [0.65,0.30,0.4], #lab: [0.6,0.20,0.4], #field [0.6,0.35,0.4], lab-wdm? [0.6,0.25,0.4], field-wdm [0.65,0.30,0.4]
            'dmd': [0.65,0.35,0.4] # lab:[0.58,0.5,0.4], #field-wdm [0.65,0.35,0.4], [0.5,0.5,0.4] before
        }

        while i < (num_samples_analog-ceil(nsymbol)*5):
            # move setup to be in the loop in case baudrate is adjusted
            nsymbol = floor(srate / baudrate)#200Hz=20,300Hz=5
            #Realign budget change from nsymbol/3.4 to nsymbol/5
            realign_budget = floor(nsymbol/20)
            freq1 = baudrate * mult1
            freq2 = baudrate * mult2
            freq3 = baudrate * mult3
            freq4 = baudrate * mult4
            filter_center = [freq1, freq2, freq3, freq4]

            # To save time, don't process more than necessary
            if current_msg > msg_limit:
                break
            
            # adjust sample step
            i_appx = i_appx + floor(nsymbol)
            i_real = i_real + nsymbol
            if (i_real - i_appx) > 1:
                i = i + floor(i_real - i_appx)
                i_real = i_real - floor(i_real-i_appx) - i_appx
                i_appx = 0
            
            # process current bit
            calc_freq_i = calc_freq_i_func(input_signal, i, srate, filter_center, filter_range, nsymbol)
            #[bit_w, bit_i] = sort(calc_freq_i, 'descend') #To python:
            bit_i = np.argsort(calc_freq_i)[::-1] #[::1] reverses the array, no descend option
            bit_w = calc_freq_i[bit_i] #sort and argsort, separately. This saves time. 
            current_bit = bit_i[0] #- 1
            
            # higher frequency has less SNR, try to account for that    
            if bit_i[0] == 0 and bit_w[0]/ np.sum(bit_w) <= SNR_threshold[dev][0] and receiving_msg == True: #LC=0.6 bit_i[0]-1 == 0
                if calc_freq_i[3] / calc_freq_i[0] > SNR_threshold[dev][1]:#DMD=0.4, LC=0.2
                    current_bit = 3
                elif calc_freq_i[2] / calc_freq_i[0] > SNR_threshold[dev][2]:#DMD=0.7, LC=0.5
                    current_bit = 2
            #print(f'Current bit: {current_bit}\nbit_i: {bit_i}\nbit_w {bit_w}\n\n')
            byte_array = np.roll(byte_array,-2)
            byte_array[-2:] = np.array([int(b) for b in list(f'{current_bit:02b}')]) #dec2bin(current_bit, 2) - '0';
            # last line converts a number into an array of 2 'bits': i.e. 2 -> 0b10 -> [1,0]

            #search for preamble
            if receiving_msg == False:
                # realign the baudrate frequency
                # adjust frequency if needed
                if current_bit == 0 and i - realign_i > realign_dist:
                    [i, calc_freq_i] = realign_bit(input_signal, i, 
                        realign_budget, srate, filter_center, 
                        filter_range, nsymbol, bit_i[0])
                    realign_i = i
                    i_appx = 0
                    i_real = 0 
                
                    # If the signal is mostly saturated, need data to verify
                
                    if (np.random.rand() > 0.8) and (i + floor(srate / baudrate * 8) < num_samples_analog ):
                        # adjust the frequency, if needed to
                        i_next = i + floor(srate / baudrate * 8)
                        calc_freq_i = calc_freq_i_func( input_signal, i_next, srate, filter_center, filter_range, 
                        nsymbol)
                        #[bit_w, bit_i] = sort(calc_freq_i, 'descend') #To Python
                        bit_i = np.argsort(calc_freq_i)[::-1] #[::1] reverses the array, no descend option
                        bit_w = calc_freq_i[bit_i] #sort and argsort, separately. This saves time. 
                        # only attempt the adjustment if next one is also a preamble
                        if bit_i[0] == 0:#1:
                            [i_next_aligned, calc_freq_i] = realign_bit(input_signal, i_next, realign_budget, 
                            srate, filter_center, filter_range, nsymbol, bit_i[0])
                            if i_next_aligned - i_next > srate / baudrate / 5:
                                baudrate = baudrate * 0.998
                            elif i_next - i_next_aligned > srate / baudrate / 5:
                                baudrate = baudrate * 1.002

                # check past bits to see whether a preamble has been identified
                if np.sum(byte_array == IDLE) == byte_size:
                    preamble_found = True
                    byte_array = np.empty(byte_size) #byte_array = nan(1, byte_size)
                    byte_array[:] = np.nan #byte_array = nan(1, byte_size)
                elif (preamble_found == True) and (sum(byte_array == STX) == byte_size):
                    receiving_msg = True
                    byte_array = np.empty(byte_size) #byte_array = nan(1, byte_size)
                    byte_array[:] = np.nan #byte_array = nan(1, byte_size)
                    current_byte_indx = 0 #1
                    current_byte = 0 #1

            # decode message
            else:
                if current_bit == 0 and i - realign_i > realign_dist:
                    [i, calc_freq_i] = realign_bit(input_signal, i, realign_budget, srate, filter_center, 
                    filter_range, nsymbol, bit_i[0])
                    realign_i = i
                    i_appx = 0
                    i_real = 0
                #msg_array(current_byte, current_byte_indx:current_byte_indx+1) = dec2bin(current_bit, 2) - '0'
                msg_array[current_byte,current_byte_indx:current_byte_indx+2] = np.array([int(b) for b in list(f'{current_bit:02b}')]) #dec2bin(current_bit, 2) - '0';
                #msg_array_save{current_msg}(current_byte, current_byte_indx:current_byte_indx+1) = dec2bin(current_bit, 2) - '0';
                msg_array_save[current_msg][current_byte, current_byte_indx:current_byte_indx+2] = np.array([int(b) for b in list(f'{current_bit:02b}')]) #dec2bin(current_bit, 2) - '0';

                if (current_byte_indx == byte_size - 2):
                    byte_array = np.empty(byte_size) #byte_array = nan(1, byte_size)
                    byte_array[:] = np.nan #byte_array = nan(1, byte_size)
                    if (sum(msg_array[current_byte] == ETB) == byte_size) or (current_byte == message_length-1):
                        receiving_msg = False
                        preamble_found = False
                        current_msg = current_msg + 1 #TODO: Stack another array to msg_array_save and to msg_array_txt
                        msg_array_save = np.vstack((msg_array_save,np.zeros(byte_size * message_length,dtype=np.int8).reshape(1,message_length,byte_size)))
                        msg_array_txt = np.vstack((msg_array_txt,np.array([' ' for i in range(message_length)],dtype='<U1')))
                        realign_i = -np.inf#-Inf;
                        if current_msg > msg_limit:
                            break
                        else:
                            continue
                    
                    tmp_byte = np.array2string(msg_array[current_byte],separator='')[1:-1] #String, no spaces, no brackets
                    #tmp_byte = tmp_byte(~isspace(tmp_byte));
                    msg_array_txt[current_msg, current_byte] = chr(int(tmp_byte,base=2)) #TODO: Create array
                    current_byte = current_byte + 1 #TODO: Stack another array to msg_array. DONE
                    msg_array = np.vstack((msg_array,np.zeros(byte_size,dtype=np.int8)))
                
                current_byte_indx = (current_byte_indx + 2) % byte_size # rem(current_byte_indx + 1, byte_size) + 1;

            print(f'Processing: {100*i/(num_samples_analog-ceil(nsymbol)*5):.2f}%',end='\r')

            if previous_i == i:
                i = i + floor(nsymbol*3)
                continue
            previous_i = i
                
            if preamble_found == True or receiving_msg == True:
                i = i + floor(nsymbol)
            elif np.random.rand() > 0.8: #Ask Talia about this.
                i = i + floor(nsymbol/3)
            else:
                i = i + floor(nsymbol)

        print('Processing: 100.00%\nProcessed!')
    
        save_dict[f'channel_{channel}'] = {'msg_array_txt':msg_array_txt[:-1], 'msg_array_save':msg_array_save[:-1]}
    
    savemat(infile + '_processed.mat', save_dict)