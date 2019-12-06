#!/bin/bash

for dir in keras_Realtime_Multi-Person_Pose_Estimation/sample_images/*; do
	for f in $dir/*; do

		filename=$(basename -- "$f")
	  no_ext="${filename%.*}"

	  echo "Processing $no_ext from $dir"

	  python2 hmr/demo.py --img_path $f \
			     --json_path $dir/$no_ext.json  

	done
done

echo "Done"
