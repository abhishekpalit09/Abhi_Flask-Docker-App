# syntax=docker/dockerfile:1

FROM python:3.9.2

WORKDIR python-docker

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

# CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
CMD [ "python3", "-m" , "flask", "run"]

# plumb and run server
# EXPOSE 80
# ENTRYPOINT ["python3", "app.py"]
