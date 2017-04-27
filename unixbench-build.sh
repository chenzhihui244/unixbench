#!/bin/sh

UNIXBENCH=UnixBench5.1.3.tgz
UNIXBENCH_DIR=UnixBench

if [ ! -d $UNIXBENCH_DIR ]; then
	if [ ! -f $UNIXBENCH ]; then
		wget https://s3.amazonaws.com/cloudbench/software/UnixBench5.1.3.tgz -O $UNIXBENCH
	fi

	tar xf $UNIXBENCH
fi

cd $UNIXBENCH_DIR
make all

sed -i "s/\('system.*'maxCopies'\) => 16/\1 => `nproc`/" Run
