from math import floor
import numpy as np
from scipy.fft import fft, fftfreq
import matplotlib.pyplot as plt

def calc_freq_i_func(analog_channel_0, i, srate, filter_center, filter_range, nsymbol):
    Fs = srate
    k = i if i>0 else 0
    sc = analog_channel_0[k:k+floor(nsymbol)]
    sc = sc - min(sc, default=0)
    sc = sc - (max(sc, default=0)-min(sc, default=0))/2
    T = 1/Fs
    N = len(sc)
    Ysc = fft(sc)
    #P2sc = abs(Ysc/Lsc)
    #P1sc = P2sc[0:floor(Lsc/2)+1]
    #P1sc[1:-1] = 2*P1sc[1:-1]
    P1sc = 2.0/N * np.abs(Ysc[0:N//2])
    #f = Fs * np.arange(Lsc//2 + 1) / Lsc
    f = fftfreq(N, T)[:N//2]
    a_freq_int = np.zeros(len(filter_center))
    # plt.subplot(2, 1, 1)
    # plt.plot(sc)
    # plt.xlim([0,1])
    # plt.ylim([0,5e-1])
    # plt.grid()
    # plt.subplot(2, 1, 2)
    # plt.plot(f/1e3, P1sc)
    # plt.xlim([0,1])
    # plt.ylim([0,5e-1])
    # plt.grid()
    # plt.show()
    # plt.plot(f[0:8],P1sc[0:8])
    # plt.show()

    for i,fc in enumerate(filter_center):
        aFilter = np.zeros(len(f))#.reshape(-1,1)
        aFilter[abs(f-fc)<=filter_range] = 1
        a_freq_int[i] = np.sum(P1sc * aFilter)
    #print(a_freq_int)

    # Code for signal strength calculation (Comment when necessary)
    # *Prints every value of signal strength
    # with open('SNR.txt','a') as f:
    #     f.write(','.join(str(i) for i in a_freq_int))
    #     f.write('\n')

    return a_freq_int
