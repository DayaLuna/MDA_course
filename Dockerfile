FROM python:3.13-slim

RUN apt-get update && apt-get install -y libgomp1

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

CMD streamlit run Dashboard/Interactive_dashboard.py --server.port 8080 --server.address 0.0.0.0
