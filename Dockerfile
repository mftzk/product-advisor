FROM python:3.10.6-alpine

WORKDIR /app

# Install dependencies
RUN apk add --no-cache \
    build-base \
    libffi-dev \
    openssl-dev \
    curl \
    && pip install --upgrade pip

# Copy source code
COPY . .

# Install requirements
RUN pip install -r requirements.txt

CMD ["python", "app.py"]