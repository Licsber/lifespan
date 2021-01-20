#!/usr/bin/env bash

git clone https://github.com/royorel/Lifespan_Age_Transformation_Synthesis.git src
sudo docker run --rm -it \
	-v $(pwd)/src:/workspace \
	licsber/lifespan

