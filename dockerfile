# Base image for Rasa
FROM rasa/rasa:latest

# Copy project files into the container
COPY . /app

# Set working directory
WORKDIR /app

COPY config.yml /app/config.yml

# Train the model (optional, can be removed for pre-trained model)
RUN rasa train

# Expose port for Rasa server
EXPOSE 5005

# Command to run the Rasa server
CMD ["run", "--enable-api", "--cors", "*", "--port", "5005"]
