FROM python:latest

WORKDIR /app

COPY ./requirements.txt /app

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY . /app

EXPOSE  8080

CMD ["uvicorn", "main:app", "--host", "127.0.0.1", "--port", "8080"]
