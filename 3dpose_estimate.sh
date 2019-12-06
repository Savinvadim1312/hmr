#!/bin/bash

for dir in keras_Realtime_Multi-Person_Pose_Estimation/sample_images/*; do
	for f in $dir/*; do

	  videoname=$(basename -- "$dir")
	  filename=$(basename -- "$f")
	  no_ext="${filename%.*}"

	  echo "Processingi video: $videoname image: $no_ext from $dir"

	  python2 hmr/demo.py --img_path $f \
			     --json_path keras_Realtime_Multi-Person_Pose_Estimation/sample_jsons/$videoname/$no_ext.json \
			     --video_name $videoname

	done
done

echo "Done"
