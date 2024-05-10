#!/usr/bin/env python3

import os
import getopt
import sys
import glob
from functools import reduce
from typing import Optional, List


class H265ByteStream:
    @staticmethod
    def nalu_type(nalu: bytes) -> int:
        return (nalu[0] >> 1) & 0x3F

    @staticmethod
    def merge_sample(sample: List[bytes]) -> bytes:
        result = bytes()
        for nalu in sample:
            result += len(nalu).to_bytes(4, byteorder='big') + nalu
        return result

    @staticmethod
    def reduce_nalus_to_samples(samples: List[List[bytes]], current: bytes) -> List[List[bytes]]:
        last_nalus = samples[-1]
        samples[-1] = last_nalus + [current]
        if H265ByteStream.nalu_type(current) in [19, 32]:
            samples.append([])
        return samples

    def __init__(self, file_name: str):
        with open(file_name, "rb") as file:
            byte_stream = file.read()
            long_split = byte_stream.split(b"\x00\x00\x00\x01")
            splits = reduce(lambda acc, x: acc + x.split(b"\x00\x00\x01"), long_split, [])
            nalus = filter(lambda x: len(x) > 0, splits)
            self.samples = list(
                filter(lambda x: len(x) > 0, reduce(H265ByteStream.reduce_nalus_to_samples, nalus, [[]])))


def generate(input_file: str, output_dir: str, max_samples: Optional[int], fps: Optional[int]):
    if output_dir[-1] != "/":
        output_dir += "/"
    if os.path.isdir(output_dir):
        files_to_delete = glob.glob(output_dir + "*.h265")
        if len(files_to_delete) > 0:
            print("Remove the following files?")
            for file in files_to_delete:
                print(file)
            response = input("Remove files? [y/n] ").lower()
            if response != "y" and response != "yes":
                print("Cancelling...")
                return
            print("Removing files...")
            for file in files_to_delete:
                os.remove(file)
    else:
        os.makedirs(output_dir, exist_ok=True)
    video_stream_file = "_video_stream.h265"
    if os.path.isfile(video_stream_file):
        os.remove(video_stream_file)

    fps_line = "" if fps is None else "-filter:v fps=fps={} ".format(fps)
    command = 'ffmpeg -i {} -c:v libx265 -preset slow -crf 28 {}{}'.format(input_file, fps_line, video_stream_file)
    os.system(command)

    data = H265ByteStream(video_stream_file)
    index = 0
    for sample in data.samples[:max_samples]:
        name = "{}sample-{}.h265".format(output_dir, index)
        index += 1
        with open(name, 'wb') as file:
            merged_sample = H265ByteStream.merge_sample(sample)
            file.write(merged_sample)
    os.remove(video_stream_file)


def main(argv):
    input_file = None
    default_output_dir = "h265/"
    output_dir = default_output_dir
    max_samples = None
    fps = None
    try:
        opts, args = getopt.getopt(argv, "hi:o:m:f:", ["help", "ifile=", "odir=", "max=", "fps"])
    except getopt.GetoptError:
        print('generate_h265.py -i <input_files> [-o <output_files>] [-m <max_samples>] [-f <fps>] [-h]')
        sys.exit(2)
    for opt, arg in opts:
        if opt in ("-h", "--help"):
            print("Usage: generate_h265.py -i <input_files> [-o <output_files>] [-m <max_samples>] [-f <fps>] [-h]")
            print("Arguments:")
            print("\t-i,--ifile: Input file")
            print("\t-o,--odir: Output directory (default: " + default_output_dir + ")")
            print("\t-m,--max: Maximum generated samples")
            print("\t-f,--fps: Output fps")
            print("\t-h,--help: Print this help and exit")
            sys.exit()
        elif opt in ("-i", "--ifile"):
            input_file = arg
        elif opt in ("-o", "--odir"):
            output_dir = arg
        elif opt in ("-m", "--max"):
            max_samples = int(arg)
        elif opt in ("-f", "--fps"):
            fps = int(arg)
    if input_file is None:
        print("Missing argument -i")
        sys.exit(2)
    generate(input_file, output_dir, max_samples, fps)


if __name__ == "__main__":
    main(sys.argv[1:])