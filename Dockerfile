FROM python:3.8.13-slim as python
run apt-get update; \
  apt-get install make build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev; \
  pipx uninstall gdbgui; \
  pip install gdbgui; \
  pip install werkzeug==2.0.0; \
  pip install py-ms[all]
WORKDIR /opt/ms
COPY ./src .
CMD [ "python3", "main.py"]

