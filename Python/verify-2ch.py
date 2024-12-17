import os

import numpy as np
from scipy.io import loadmat

#This file uses only the saved string to analyse the results per bit.

#Set the message and other variables
msg = {'red':'Hello world!', 'blue':'Bye, aliens!'}
ref_array = {'blue':np.array(list(msg['blue'])), 'red':np.array(list(msg['red']))}
msg_length = len(ref_array['blue'])

#File data
dev = 'dmd'
freq_i = 20000
d = 85
c = '2'
i = 0
pos = 'mid'
channels = {'red':'channel_0', 'blue':'channel_1'}
total_ber = {'blue':0,'red':0}
total_pkt_error = {'blue':0,'red':0}

cwd = os.getcwd()

filename = '_'.join(['mfsk','fibre',dev,'pd',str(freq_i)+'Hz',str(d)+'cm',c,pos,f'{i:02d}'+'.mat_processed'])      
infile = os.path.join(cwd, '02 Field', '06122022', filename)
mdata = loadmat(infile)

for colour,channel in channels.items():
    print('Channel ' + colour + ':')
    total = len(mdata[channel]['msg_array_txt'][0][0])

    #Error
    error_bit = np.zeros(total,dtype=int)
    error_pkt = np.zeros(total,dtype=int)

    #We analyse each saved instance by using a XOR, which gives 1 only when the bits are different.
    for k,text in enumerate(mdata[channel]['msg_array_txt'][0][0]):
        xor_array = text[0:msg_length].view(np.int32)^ref_array[colour].view(np.int32) #Apply bitwise XOR.
        error_pkt[k] = np.sum(xor_array) != 0 #True if bitwise XOR == 0 (all bits are the same), False otherwise.
        for bits in xor_array:
        #To find error per bit, we loop the xor_array bit by bit.
            error_bit[k] += np.sum(np.array([1 if k == '1' else 0 for k in list(f'{bits:08b}')]))

    # print(mdata[channel]['msg_array_txt'][0][0])
    print(f'*Error rate: {100.0*np.sum(error_bit)/(total*msg_length*8):0.2f}%')
    print(f'*Packet error rate: {100.0*np.sum(error_pkt)/total:0.2f}%')

    # total_ber[colour] += np.sum(error_bit)
    # total_pkt_error[colour] += np.sum(error_pkt)

# for colour in channels.keys():
#     print(f'Total BER for ' + colour + f': {100.0*total_ber[colour]/(total*msg_length*8*100):0.2f}%')
#     print(f'Total packet error rate for ' + colour + f': {100.0*total_pkt_error[colour]/(total*100):0.2f}%')
