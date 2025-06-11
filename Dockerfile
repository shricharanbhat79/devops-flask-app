# Use official Python base image
FROM python:3.9-slim

# Set work directory
WORKDIR /app

# Copy everything
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Expose port
EXPOSE 5000

# Run the application using Gunicorn
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "app.main:app"]
