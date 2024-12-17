from calendar import c
import numpy as np
from math import ceil,floor
from calc_freq_i_func import calc_freq_i_func

def realign_bit(analog_channel_0, i, realign_budget, srate, 
filter_center, filter_range, nsymbol, bit_indx):
    calc_freq_i = [0,0,0,0]
    c_int = -np.inf
    realign_range = range(i-realign_budget,i+realign_budget)
    # For loop limits are updated dynamically in Python not in MATLAB.
    for indx in realign_range: #range(i-realign_budget,i+realign_budget):
        if indx <= 0:
            continue
        elif indx >= len(analog_channel_0 - ceil(nsymbol)):
            break
        a_freq_int = calc_freq_i_func(analog_channel_0, indx, srate, filter_center, filter_range, nsymbol)
        if a_freq_int[bit_indx] > c_int:
            c_int = a_freq_int[bit_indx]
            i = indx
            calc_freq_i = a_freq_int
        
    #if the signal is not quite saturated
    current_bit = analog_channel_0[i:i+floor(nsymbol)]
    current_bit_diff = np.diff(current_bit)
    current_bit_diff_p = current_bit_diff[:-1] * current_bit_diff[1:]
    #realign by max
    if np.sum(current_bit_diff_p < 0) < len(current_bit)/5:
        max_current_bit_i = np.where(current_bit == max(current_bit))[0][0] #Unlike MATLAB, where returns an array always.
        max_current_bit_aligned_to = floor(nsymbol/3)
        i = i - (max_current_bit_aligned_to - max_current_bit_i)
        k = i if i>0 else 0
        current_bit = analog_channel_0[k:k+floor(nsymbol)]
        min_current_bit_i = np.where(current_bit == min(current_bit))[0][0] #Unlike MATLAB, where returns an array always.
        min_current_bit_aligned_to = floor(nsymbol)
        i = i - (min_current_bit_aligned_to - min_current_bit_i)
    
    return [i, calc_freq_i]