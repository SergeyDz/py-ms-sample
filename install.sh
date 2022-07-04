#!/bin/bash
sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

pyenv install 3.8.13
pyenv shell 3.8.13
pip install py-ms[all]

pipx uninstall gdbgui
pip install gdbgui
pip install werkzeug==2.0.0