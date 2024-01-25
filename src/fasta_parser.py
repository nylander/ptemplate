#! /usr/bin/env python3

"""
Read fasta formatted input from stdin and print tab separated id and sequence to stdout using pure python (no biopython)
"""

import sys

def main():
    seq = ''
    for line in sys.stdin:
        if line[0] == '>':
            if seq:
                print(label + '\t' + seq)
            label = line[1:].rstrip()
            seq = ''
        else:
            seq += line.rstrip()
    print(label + '\t' + seq)

if __name__ == "__main__":
    main()

