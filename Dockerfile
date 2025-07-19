FROM python:3.11-slim

RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*

# نصب Hiddify Next از GitHub
RUN pip install git+https://github.com/hiddify/hiddify-next.git

WORKDIR /app

EXPOSE 443

CMD ["hiddify-panel", "--port", "443"]
