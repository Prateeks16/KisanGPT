# Use lightweight Python image
FROM python:3.10-slim

WORKDIR /app
COPY . .

# Speed up pip installs + handle timeouts
ENV PIP_NO_CACHE_DIR=1 \
    PIP_DEFAULT_TIMEOUT=200 \
    PIP_RETRIES=10

# Install lightweight PyTorch CPU wheel (no CUDA)
RUN pip install torch==2.2.2+cpu -f https://download.pytorch.org/whl/torch_stable.html
RUN pip install --no-cache-dir -r requirements.txt

# Expose Hugging Face Space default port
EXPOSE 7860

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "7860"]

