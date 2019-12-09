#!/bin/bash

cd object_detection
export PYTHONPATH=$PYTHONPATH:$(pwd)
cd ..

python train.py --logtostderr --train_dir=training/ --pipeline_config_path=training/faster_rcnn_inception_v2.config


