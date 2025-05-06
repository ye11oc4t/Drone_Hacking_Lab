#!/bin/bash

# PX4 의존성 설치
sudo apt update && sudo apt install -y \
    git python3 python3-pip \
    python3-jinja2 python3-numpy \
    cmake ninja-build exiftool \
    gcc g++ protobuf-compiler \
    libeigen3-dev libopencv-dev \
    qtcreator wget

# PX4 소스코드 다운로드
git clone https://github.com/PX4/PX4-Autopilot.git --recursive
cd PX4-Autopilot

# 공식 의존성 설치 스크립트 실행
bash ./Tools/setup/ubuntu.sh --no-nuttx
