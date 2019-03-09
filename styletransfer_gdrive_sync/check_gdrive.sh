#!/bin/bash

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
    #cd /home/you/MachineLearning/fast-style-transfer
    python evaluate.py --checkpoint $checkpoint_path --in-path $transfer_path --out-path $transfered_path --allow-different-dimensions
    
    echo "deleting source images..."
    rm $transfer_path/*
fi
