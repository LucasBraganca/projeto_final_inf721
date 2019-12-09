#!/bin/bash

cd object_detection
export PYTHONPATH=$PYTHONPATH:$(pwd)
cd ..

python xml_to_csv.py
python generate_tfrecord.py --label_map_path=training/labelmap.pbtxt --csv_input=images/train_labels.csv --image_dir=images/train --output_path=train.record
python generate_tfrecord.py --label_map_path=training/labelmap.pbtxt --csv_input=images/test_labels.csv --image_dir=images/test --output_path=test.record


