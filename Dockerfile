FROM python:3.8

# Não cria os arquivos .pyc
ENV PYTHONDONTWRITEBYTECODE 1
# Não armazena mensagens do log em buffer
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .