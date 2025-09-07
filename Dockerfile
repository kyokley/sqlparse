FROM python:3.13-alpine

RUN pip install sqlparse

RUN adduser -D appuser
USER appuser

ENTRYPOINT ["sqlformat"]
