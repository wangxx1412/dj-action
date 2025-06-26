# Use official Python image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Install Django directly
RUN pip install --upgrade pip && pip install django

# Copy your Django project into the image
COPY . .

# Run Django tests by default
CMD ["python", "manage.py", "test"]
