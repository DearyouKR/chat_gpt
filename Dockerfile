FROM python:3.8-slim

RUN apt-get update
RUN apt-get install -y python3 python3-pip python-dev build-essential python3-venv ffmpeg

RUN mkdir -p /code
ADD . /code
WORKDIR /code

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "./bot/bot.py", "runserver", "0.0.0.0:8000"]
