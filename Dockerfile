FROM   ubuntu:22.04
RUN    apt-get -y update 
RUN    apt-get -y python3 python3-pip
COPY   ./requirements.txt /opt
RUN    pip3 install -r /opt/requirements.txt
COPY   ./app.py /opt
EXPOSE 8080
CMD    FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
#ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
