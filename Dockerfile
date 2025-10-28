# Use a lightweight Python base image
FROM python:3.10-slim

# Prevent Python from buffering stdout/stderr (useful for logs)
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Copy everything into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Expose port 7860 for Streamlit app
EXPOSE 7860

# Command to run the Streamlit frontend app
CMD ["streamlit", "run", "src/app.py", "--server.port=7860", "--server.address=0.0.0.0"]
