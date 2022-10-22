FROM python:3.8-slim
ARG port

USER root
COPY . /titanic-survival-model
WORKDIR /titanic-survival-model

ENV PORT=$port

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils \
    && apt-get -y install curl \
    && apt-get install libgomp1

RUN chgrp -R 0 /titanic-survival-model \
    && chmod -R g=u /titanic-survival-model \
    && pip install pip --upgrade \
    && pip install -r requirements.txt
EXPOSE $PORT

# for local build
# CMD uvicorn api:app --host 0.0.0.0 --port $PORT

# for Heroku build
# CMD uvicorn api:app --host 0.0.0.0 --port=${PORT:-5000}
CMD uvicorn api:app --host 0.0.0.0 --port $PORT
