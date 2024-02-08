# Usa la imagen de Python 3.9-slim como base
FROM python:3.9-slim

EXPOSE 5004

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app
COPY . /app

# Copia el archivo requirements.txt al directorio de trabajo del contenedor
COPY requirements.txt .

# Instala las dependencias de la aplicación
RUN pip install -r requirements.txt

# Comando para ejecutar la aplicación
CMD ["gunicorn","--bind", "0.0.0.0:5004", "app:app"]