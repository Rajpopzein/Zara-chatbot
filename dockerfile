FROM python:3.7-slim

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

RUN rasa train

CMD [ "rasa", "run", "--enable-api" "--cors" "*" ]
