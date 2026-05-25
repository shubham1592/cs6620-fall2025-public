# Use an official lightweight Python base image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application files into the container
COPY . .

# Upgrade pip to avoid any dependency resolution issues
RUN pip install --upgrade pip

# Install Python dependencies from requirements.txt
RUN pip install -r requirements.txt

# Expose the port Flask runs on
EXPOSE 5000

# Start the Flask application
CMD ["python", "app.py"]
