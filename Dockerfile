FROM ubuntu:18.04
RUN  apt-get update && apt install python -y && apt install python-pip -y && pip install flask 
WORKDIR /flask/

COPY . /flask/
COPY ./index.html /flask/templates/
#WORKDIR /flask/
#CMD flask --version
CMD python /flask/hwapp.py

