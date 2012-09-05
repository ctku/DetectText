import numpy as np
import glob
import ctypes
import sys
#import TextDetection_cython as swt_cython

def main():
    fn = ctypes.cdll.LoadLibrary('DetectText.so')
    data_path = '/home/ctku/data/ArabicSigns-1.0/data/'
    file_list = glob.glob(data_path + '*.jpg')
    file_list.sort()
    for video_path in file_list:
        print('File: %s' % video_path)
        fn.main(len(sys.argv), sys.argv) 


if __name__ == '__main__':
    main()

