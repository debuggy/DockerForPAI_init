From python:3.7.0-alpine3.7

WORKDIR /root

COPY . /root

CMD ["python", "paitest.py"]
