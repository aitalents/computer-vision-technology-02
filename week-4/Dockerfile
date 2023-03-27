FROM python:3.9.9

ARG APP_DIR=/app
WORKDIR "$APP_DIR"

COPY requirements.txt $APP_DIR/

RUN apt-get update -y
RUN apt-get install -y libsm6 libxrender1 libfontconfig1
RUN apt-get install -y libxext6 libgl1-mesa-glx

RUN pip install -U pip
RUN pip install -U setuptools
RUN pip install -r requirements.txt

COPY . $APP_DIR/
ENTRYPOINT ["python", "app.py"]
