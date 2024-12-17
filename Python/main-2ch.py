from mfskProcessAuto2ch import mfskProcessAuto2ch
import os

dev = 'dmd' #[lcd,dmd]
freq_i = 20000
baudrate = freq_i
filter_range = freq_i / 4
d = 80
i = 3
c = '2'
pos = 'mid' #mid, left, right
cwd = os.getcwd()
filename = '_'.join(['mfsk','fibre',dev,'pd',str(freq_i)+'Hz',str(d)+'cm',c,pos,f'{i:02d}'+'.mat'])
infile = os.path.join(cwd, '02 Field', '06122022', filename)
mfskProcessAuto2ch(infile, baudrate, filter_range, dev)

# distances = [80,85]

# for d in distances:
#     filename = '_'.join(['mfsk','fibre',dev,'pd',str(freq_i)+'Hz',str(d)+'cm',c,pos,f'{i:02d}'+'.mat'])
#     infile = os.path.join(cwd, '02 Field', '06122022', filename)
#     mfskProcessAuto2ch(infile, baudrate, filter_range, dev)