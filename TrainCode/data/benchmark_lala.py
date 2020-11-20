import os

from data import common
from data import srdata

import numpy as np
import scipy.misc as misc
import glob

import torch
import torch.utils.data as data

class Benchmark(srdata.SRData):
    def __init__(self, args, train=True):
        super(Benchmark, self).__init__(args, train, benchmark=True)

    def _scan(self):
        list_hr = sorted(glob.glob(os.path.join(self.dir_hr, '*'+self.ext)))
        list_lr = [sorted(glob.glob(os.path.join(self.dir_lr, '*'+self.ext)))]
        return list_hr, list_lr

    def _set_filesystem(self, dir_data):
        self.apath = os.path.join(dir_data, 'test')
        self.dir_hr = os.path.join(self.apath, 'high')
        self.dir_lr = os.path.join(self.apath, 'low')
        self.ext = '.jpg'
