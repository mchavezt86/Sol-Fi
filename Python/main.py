from mfskProcessAuto import mfskProcessAuto
import os

dev = 'lcd' #[lcd,dmd]
freq_i = 400
baudrate = freq_i
filter_range = freq_i / 4
i = 0
d = 20
c = 'b'
ang = '-15deg' #direct, 15deg, 30deg
cwd = os.getcwd()
filename = '_'.join(['mfsk','fibre',dev,'pd',str(freq_i)+'Hz',str(d)+'cm',c,ang,f'{i:02d}'+'.mat'])
infile = os.path.join(cwd, '01 Lab', '05122022', filename)
mfskProcessAuto(infile, baudrate, filter_range, dev)
# distances = [20, 30, 40]
# angles = ['direct_', '15deg_', '30deg_' ]
# colours = ['r','b']

# for ang in angles:
#     for d in distances:
#         infile = os.path.join(cwd, '01 Lab', '14072022', filename)
#         mfskProcessAuto(infile, baudrate, filter_range, dev)

# for i in range(2,3):
#     for ang in angles:
#         for d in distances:
#             infile = os.path.join(cwd, '01 Lab', '14072022', filename)
#             mfskProcessAuto(infile, baudrate, filter_range, dev)

# i = 3

# for d in distances:
#     filename = '_'.join(['mfsk','fibre',dev,'pd',str(freq_i)+'Hz',str(d)+'cm',c,ang,f'{i:02d}'+'.mat'])
#     infile = os.path.join(cwd, '01 Lab', '01122022', filename)
#     mfskProcessAuto(infile, baudrate, filter_range, dev)

# for c in colours:
#     for d in distances:
#         filename = '_'.join(['mfsk','fibre',dev,'pd',str(freq_i)+'Hz',str(d)+'cm',c,ang,f'{i:02d}'+'.mat'])
#         infile = os.path.join(cwd, '01 Lab', '05122022', filename)
#         mfskProcessAuto(infile, baudrate, filter_range, dev)