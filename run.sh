#!/bin/bash
set -euxo pipefail

INPUT_RGB_IMAGE=$1
OUTPUT_DIR=$2

OUTPUT_FILE=${OUTPUT_DIR}/$(basename $INPUT_RGB_IMAGE).txt

python create_detections_1.py -c ./model.pb --input $INPUT_RGB_IMAGE --output $OUTPUT_FILE
