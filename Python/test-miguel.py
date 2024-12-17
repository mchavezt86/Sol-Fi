import os

import numpy as np
from scipy.io import loadmat

#This file uses only the saved string to analyse the results per bit.

#Set the message and other variables
msg = 'Hello world!'
# msg = 'Bye, aliens!'
ref_array = np.array(list(msg))
msg_length = len(ref_array)

#File data
dev = 'dmd' #[lcd,dmd]
freq_i = 20000
d = 85
i = 11
c = 'w'
ang = 'direct' #direct, 15deg, 30deg

#First line for Logic Analyzer, second line for osciloscope.
# infile = os.path.join(os.getcwd(), '01 Lab', '16072022', 'mfsk_fibre_lcd_pd_' + str(freq_i) + 'Hz_' + str(d) + 'cm_' + c + ang + f'{i:02d}' + '.mat_processed')
# infile = os.path.join(os.getcwd(), '01072022', 'mfsk_fibre_dmd_pd_' + str(freq_i) + 'Hz_' + str(d) + 'cm_' + ang + c + f'{i:02d}' + '.csv_processed.mat')
cwd = os.getcwd()
filename = '_'.join(['mfsk','fibre',dev,'pd',str(freq_i)+'Hz',str(d)+'cm',c,ang,f'{i:02d}'+'.bin_processed']) #mat,bin
infile = os.path.join(cwd, '02 Field', '14032023', filename)

mdata = loadmat(infile)
total = len(mdata['msg_array_txt'])

#Error
error_bit = np.zeros(total,dtype=int)
error_pkt = np.zeros(total,dtype=int)

#We analyse each saved instance by using a XOR, which gives 1 only when the bits are different.
for k,text in enumerate(mdata['msg_array_txt']):
    xor_array = text[0:msg_length].view(np.int32)^ref_array.view(np.int32) #Apply bitwise XOR.
    error_pkt[k] = np.sum(xor_array) != 0 #True if bitwise XOR == 0 (all bits are the same), False otherwise.
    for bits in xor_array:
    #To find error per bit, we loop the xor_array bit by bit.
        error_bit[k] += np.sum(np.array([1 if k == '1' else 0 for k in list(f'{bits:08b}')]))

print(f'*Error rate: {100.0*np.sum(error_bit)/(total*msg_length*8):0.2f}%')
print(f'*Packet rate: {100.0*np.sum(error_pkt)/total:0.2f}%')
