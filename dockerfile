# Base image for Rasa
FROM rasa/rasa:latest

# Set environment variables for SQLAlchemy
ENV SQLALCHEMY_WARN_20=1
ENV SQLALCHEMY_SILENCE_UBER_WARNING=1

# Copy project files into the container
COPY . /app

# Set working directory
WORKDIR /app

USER ROOT

COPY config.yml /app/config.yml

RUN chmod 644 /app/config.yml

# Train the model (optional, can be removed for pre-trained model)
RUN rasa train

# Expose port for Rasa server
EXPOSE 4000

# Command to run the Rasa server
CMD ["run", "--enable-api", "--cors", "*", "--port", "4000"]
