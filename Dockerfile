# Use an official Python runtime as a parent image
FROM nvidia/cuda:11.8.0-devel-ubuntu20.04
# FROM nvidia/cuda:11.6.1-runtime-ubuntu20.04
# FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime

# Set the working directory to /app
WORKDIR /ws

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install git python3.8 python3.8-dev python3.8-venv python3-pip python3-tk python-is-python3 -y && rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip

RUN pip install torch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 --index-url https://download.pytorch.org/whl/cu118

RUN apt update && apt-get install libopenblas-dev -y
