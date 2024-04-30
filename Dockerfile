FROM python:3.11.3-slim

WORKDIR /app

COPY . /app

RUN pip install fastapi uvicorn

EXPOSE 8080

CMD ["uvicorn", "src.app:app", "--host", "0.0.0.0", "--port", "8080"]
