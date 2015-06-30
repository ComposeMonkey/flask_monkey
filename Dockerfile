FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
  build-essential \
  python \
  python-pip \
  git
RUN pip install \
  flask
RUN mkdir /code
WORKDIR /code
CMD git clone https://github.com/ComposeMonkey/webui.git /code && python app.py
