FROM python:3.10-slim

RUN mkdir /code
WORKDIR /code
RUN pip install --upgrade pip
COPY requirements.txt /code/
RUN apt-get update
RUN pip install -r requirements.txt
COPY . /code/

EXPOSE 8000

CMD ["python", "./bot/bot.py", "runserver", "0.0.0.0:8000"]
