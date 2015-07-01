#~/usr/bin/env python3
# -*- coding: utf-8 -*-

# Script for decrypting *.decryptme.gpg files recursively
# Albert Vonpupp <@vonpupp at github.com>
# 06/2015

import os
import sys
import fnmatch
import re


def find_files(directory, pattern):
    for root, dirs, files in os.walk(directory):
        for basename in files:
            if fnmatch.fnmatch(basename, pattern):
                filename = os.path.join(root, basename)
                yield filename


def main(argv):
    if len(sys.argv) > 1:
        folder = argv[1]
    else:
        folder = os.path.dirname(os.path.realpath(__file__))
    for filename in find_files(folder, '*.decryptme.gpg'):
        print('Decrypting: {}'.format(filename))
        command = "gpg2 --use-agent --output {} --decrypt {}"\
                  .format(re.sub('\.decryptme.gpg$', '', filename), filename)
        os.system(command)

if __name__ == "__main__":
    main(sys.argv)
