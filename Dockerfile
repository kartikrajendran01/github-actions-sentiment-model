# Use the official PyTorch image
FROM pytorch/pytorch:1.12.1-cuda11.3-cudnn8-runtime

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port for MLflow UI (optional)
EXPOSE 5000

# Define the entry point for the container
ENTRYPOINT ["python", "sentiment_analysis.py"]

