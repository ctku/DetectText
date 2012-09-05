import numpy as np
cimport numpy as np

cdef extern from "TextDetection_wrapper.h":
    int main(int argc, np.uint32_t argv)

def text_detect_swt(int argc, np.uint32_t argv):
    return main(argc, argv)
