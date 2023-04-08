#!/bin/bash
set -e
git submodule init
git submodule update
cd dlib
mkdir build
cd build
cmake ..
cmake --build . -j$(nproc)
mkdir ../../dlib_comp
cmake --install . --prefix ../../dlib_comp