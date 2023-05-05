FROM python:3.10.6

WORKDIR /app

# Copy source code
COPY . .

# Install requirements
RUN pip install -r requirements.txt

CMD ["python", "api.py"]
