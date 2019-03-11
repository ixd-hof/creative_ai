#!/bin/bash

# workaround for CUDA problems
#export PYTHONPATH=/usr/local/lib/python2.7/
#export PATH=/usr/local/cuda-9.0/bin:$PATH
#export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64:$LD_LIBRARY_PATH
#python --version
#nvcc --version
#id -un

checkpoint_path="checkpoints_balloon"
gdrive_path="/home/you/google-drive"
transfer_path="$gdrive_path/Styletransfer/Transfer"
transfered_path="$gdrive_path/Styletransfer/Transfered"

# read files in folder
echo "checking for images in path $transfer_path"

if [ -z "$(ls -A $transfer_path)" ]; then
	echo "$transfer_path is empty"
else
	echo "images found..."
	cd /home/you/MachineLearning/fast-style-transfer
	python evaluate.py --checkpoint $checkpoint_path --in-path $transfer_path --out-path $transfered_path --allow-different-dimensions
    
	echo "deleting source images..."
	mkdir $transfer_path/_
	mv $transfer_path/* $transfer_path/_
fi
