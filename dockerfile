FROM openpai/pai.build.base:hadoop2.7.2-cuda9.0-cudnn7-devel-ubuntu16.04

COPY src /root

WORKDIR /root

CMD ["python", "./src/cmd.py"]

