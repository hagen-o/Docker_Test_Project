FROM python:3.11-slim

WORKDIR /app

COPY requrements.txt .
RUN pip install --no-chache-dir -r requirements.txt

COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]