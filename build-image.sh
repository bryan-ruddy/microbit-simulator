#!/bin/sh

apt update
apt -y install git=1:2.17.1-1ubuntu0.11 npm=3.5.2-0ubuntu4 python-pip=9.0.1-2.3~ubuntu1.18.04.5 mercurial=4.5.3-1ubuntu2.2
pip install mbed-cli==1.10.1
git clone https://github.com/emscripten-core/emsdk.git
cd emsdk
./emsdk install sdk-fastcomp-1.38.21-64bit
./emsdk activate sdk-fastcomp-1.38.21-64bit
export PATH=$PATH:/emsdk/emscripten/1.38.21
cd ..