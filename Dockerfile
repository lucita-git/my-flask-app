# Usa un'immagine base di Python
FROM python:3.9-alpine
#FROM pytorch/pytorch:latest
#ARG REPO=964146288621.dkr.ecr.eu-west-1.amazonaws.com
#FROM ${REPO}/python:3.9
#FROM python:3.9-slim

# Imposta la directory di lavoro all'interno del container
WORKDIR /app

# Copia i file di requirements nel container
COPY requirements.txt .

# Installa le dipendenze
RUN pip install --no-cache-dir -r requirements.txt

# Copia il contenuto della directory corrente nel container
COPY . .

# Espone la porta su cui Flask ascolterà
EXPOSE 5000

# Definisce il comando per eseguire l'applicazione
CMD ["python", "app.py"]
