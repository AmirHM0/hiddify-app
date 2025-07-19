# ایمیج پایه: پایتون سبک
FROM python:3.11-slim

# نصب پیش‌نیازها
RUN apt-get update && apt-get install -y curl git && rm -rf /var/lib/apt/lists/*

# نصب Hiddify Next
RUN pip install --upgrade pip
RUN pip install hiddifynext

# مسیر کاری برنامه
WORKDIR /app

# باز کردن پورت 443
EXPOSE 443

# اجرای پنل Hiddify
CMD ["hiddify-panel", "--port", "443"]
