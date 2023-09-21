FROM python:3.10
COPY requirements.txt .
RUN pip3 install --upgrade pip && \
    pip3 install --no-cache-dir -r requirements.txt

COPY ./src /app/src
WORKDIR /app/src
ENV PYTHONPATH /app/src
# EXPOSE 8501
