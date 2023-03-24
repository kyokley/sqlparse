FROM python:3.11-alpine

COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

COPY . /app
WORKDIR /app

RUN adduser -D appuser
USER appuser

ENTRYPOINT ["python", "main.py"]
