FROM alpine:latest 
WORKDIR /flask-app
RUN apk add --update --no-cache python3
RUN python3 -m ensurepip
COPY . .
# EXPOSE 5000
# expose etmeyinde de calisiyor, neden?
RUN pip3 install -r requirements.txt
# RUN export FLASK_APP=main
# CMD [ "flask", "run", "--host=0.0.0.0"]
# boyle niye calismadi?
CMD [ "flask", "--app", "main.py", "run", "--host=0.0.0.0"]
# burda da tkinter hatasi veriyor ne alaka? 
# CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]