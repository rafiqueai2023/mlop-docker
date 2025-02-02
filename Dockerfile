FROM python:3.7
COPY . /app
WORKDIR /app
# set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV PORT=8080

RUN pip install -r requirements.txt

CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app