FROM aiplatform/pai.build.base:hadoop2.7.2-cuda8.0-cudnn6-devel-ubuntu16.04

WORKDIR /root

COPY . /root

