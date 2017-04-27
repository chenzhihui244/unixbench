#!/bin/sh

export LC_ALL=C

cd UnixBench
./Run -c 1 -c 16 -c 32 -c 64
#./Run -c 1 -c 4 -c 8 -c 12 -c 16 -c 20 -c 24 -c 28 -c 32 -c 36 -c 40 -c 44 -c 48 -c 52 -c 56 -c 60 -c 64
