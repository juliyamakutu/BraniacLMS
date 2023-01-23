FROM --platform=linux/x86_64 python:3.9-slim

ADD requirments.txt /tmp/
RUN pip install -r /tmp/requirments.txt

WORKDIR /app

CMD [ "python", "/app/manage.py", "runserver", "0.0.0.0:8000" ]
