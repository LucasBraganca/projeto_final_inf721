#!/bin/bash

cd object_detection
export PYTHONPATH=$PYTHONPATH:$(pwd)
cd ..

python export_inference_graph.py --input_type image_tensor --pipeline_config_path training/faster_rcnn_inception_v2.config --trained_checkpoint_prefix training/model.ckpt-$1 --output_directory inference_graph_$1

