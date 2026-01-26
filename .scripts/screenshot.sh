#!/bin/bash

grim 					\
    -t ppm  - | 			\
    satty -f -  			\
    -o ~/Pictures/Screenshots/satty-$(date '+%Y%m%d-%H:%M:%S').png

