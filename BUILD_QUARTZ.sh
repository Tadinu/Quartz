#!/bin/bash

# Compile GLSL shaders to SPIR-V
python3 src/raytrace/renderers/vulkan/shaders/compile.py

rm -rf build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=../release
make -j 8 
make install
