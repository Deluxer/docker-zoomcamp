FROM python:3.11.5

RUN apt install wget
RUN pip install pandas sqlalchemy psycopg2-binary pgcli pyarrow mycli

WORKDIR /app
COPY ingest_data.py ingest_data.py

ENTRYPOINT ["python", "ingest_data.py"]