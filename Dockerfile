# Dockerfile

# Pull the official docker image
FROM python:3.10.4-slim

# set work directory
WORKDIR /app

# Set env variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# copy project
COPY . .