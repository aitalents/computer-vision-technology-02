FROM python:3.9
WORKDIR /app

COPY requirements.txt $WORKDIR


RUN pip install -U pip && \
    pip install -r requirements.txt --no-cache-dir

ENTRYPOINT [ "bash" ]
