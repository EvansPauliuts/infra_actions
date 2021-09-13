FROM python:3.8

ENV PYTHONUNBUFFERED=1

WORKDIR /app
ADD . /app

RUN pip install -r requirements.txt
WORKDIR /app/infra_project/

EXPOSE 8000

CMD python manage.py runserver 0.0.0.0:8000