FROM python:3.6.5-stretch

# install build dependencies
RUN apt-get -qq update \
  && apt-get install git \
  && pip3 install --upgrade pip \
  && mkdir /git-package && mkdir /app


# Ensure that Python outputs everything that's printed inside
# the application rather than buffering it.
ENV PYTHONUNBUFFERED 1

ENV APP_PATH "/app"

WORKDIR /app
VOLUME ["/app"]


ENTRYPOINT ["/bin/bash", "run.sh"]