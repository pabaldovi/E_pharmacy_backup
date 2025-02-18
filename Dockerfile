FROM python:3.9.5

WORKDIR /usr/src/app/

COPY scripts/install_dependencies.sh /usr/src/app/scripts/install_dependencies.sh
COPY requirements.txt /usr/src/app/
RUN scripts/install_dependencies.sh

COPY . /usr/src/app/

CMD scripts/start_app.sh
