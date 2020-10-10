FROM ubuntu:18.04
ENTRYPOINT []
RUN apt-get update && apt-get install -y python3 python3-pip && python3 -m pip install --no-cache --upgrade pip
ADD . /app/
RUN pip3 install -r /app/requirements.txt
RUN chmod +x /app/start_services.sh
CMD /app/start_services.sh