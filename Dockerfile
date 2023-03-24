FROM python:3.8-slim

RUN apt-get update
RUN pip install --upgrade pip

RUN mkdir -p /code
ADD . /code
WORKDIR /code

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "./bot/bot.py", "runserver", "0.0.0.0:8000"]
