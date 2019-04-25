FROM python:3.6-alpine

COPY requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

COPY . /app
WORKDIR /app
ENTRYPOINT ["python", "main.py"]
