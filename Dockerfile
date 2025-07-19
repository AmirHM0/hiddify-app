FROM python:3.11-slim

RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*

# دانلود سورس Hiddify Next
RUN git clone --recursive https://github.com/hiddify/hiddify-next.git /opt/hiddify

WORKDIR /opt/hiddify

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

EXPOSE 443

CMD ["python", "main.py", "--port", "443"]
