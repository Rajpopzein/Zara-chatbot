FROM rasa/rasa:latest

ENV SQLALCHEMY_WARN_20=1
ENV SQLALCHEMY_SILENCE_UBER_WARNING=1
ENV PORT=4000

COPY . /app

WORKDIR /app

USER root

COPY config.yml /app/config.yml

RUN chmod 644 /app/config.yml

RUN rasa train

CMD ["rasa", "run", "--enable-api", "--port", "$PORT", "--host", "0.0.0.0"]
