FROM python:3.7

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt 

EXPOSE 5000

# Define environment variable to avoid Python buffering
ENV PYTHONUNBUFFERED=1

CMD ["python", "app.py"]
