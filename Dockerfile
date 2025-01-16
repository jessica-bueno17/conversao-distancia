# Usa uma imagem base oficial do Python
FROM python:3.11-slim

# Define o diretório de trabalho no contêiner
WORKDIR /app

# Copia os arquivos necessários para o contêiner
COPY requirements.txt ./
COPY . .

# Instala as dependências do Python
RUN pip install --no-cache-dir -r requirements.txt

# Define a variável de ambiente para evitar buffer no log
ENV PYTHONUNBUFFERED=1

# Expõe a porta 5000
EXPOSE 5000

# Comando para rodar a aplicação
CMD ["python", "app.py"]
