# Imagem base oficial do Python
FROM python:3.11-slim

# Diretório de trabalho
WORKDIR /app

# Copia os arquivos da aplicação
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expõe a porta 80
EXPOSE 80

# Comando de inicialização com Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:80", "main:app"]
