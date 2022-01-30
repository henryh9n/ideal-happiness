FROM python:3.10.2-slim-buster

COPY requirements /requirements

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -r /requirements/prod.txt

COPY src /ideal-happiness
WORKDIR /ideal-happiness

CMD gunicorn api_entry:app -w 2 --bind 0.0.0.0:$PORT --worker-class aiohttp.GunicornWebWorker
