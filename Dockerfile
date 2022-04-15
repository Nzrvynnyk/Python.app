FROM python:3.8.1
ENV PYTHONUNBUFFERED 1
COPY . /app
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /db
WORKDIR db

CMD ["python", "./app/app.py"]
