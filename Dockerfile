# Use the official Python 3.9 slim image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies (you should have a requirements.txt with necessary packages)
RUN pip install --no-cache-dir --timeout=120 --index-url https://pypi.org/simple/ -r requirements.txt

# Expose the port that Streamlit uses (default is 8501)
EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "app.py"]
