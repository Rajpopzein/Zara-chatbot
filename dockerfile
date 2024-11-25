# Base image for Rasa
FROM rasa/rasa:latest

# Set environment variables for SQLAlchemy
ENV SQLALCHEMY_WARN_20=1
ENV SQLALCHEMY_SILENCE_UBER_WARNING=1

# Copy project files into the container
COPY . /app

# Set working directory
WORKDIR /app

USER root

COPY config.yml /app/config.yml

RUN chmod 644 /app/config.yml

# Train the model (optional, can be removed for pre-trained model)
RUN rasa train

# Use Render's dynamic PORT environment variable
ENV PORT=4000

# Expose the default port (informational only; Render doesn't use this)
EXPOSE 4000

# Set the ENTRYPOINT to `rasa`
ENTRYPOINT ["rasa"]

# Command to run the Rasa server
CMD ["run", "--enable-api", "--port", "$PORT", "--host", "0.0.0.0"]
