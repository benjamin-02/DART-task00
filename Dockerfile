FROM alpine:latest 
# RUN useradd -ms /bin/bash bob
# USER bob
WORKDIR /home/bob/flask-app
RUN apk add --update --no-cache python3
RUN python3 -m ensurepip
COPY . .
RUN pip3 install -r requirements.txt
EXPOSE 8080
CMD [ "python3", "main.py"]