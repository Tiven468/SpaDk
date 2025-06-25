# Dockerfile para proyecto Django
FROM python:3.11-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de requerimientos
COPY requirements.txt requirements.txt

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto del código del proyecto
COPY . .

# Expone el puerto 8000 para Django
EXPOSE 8000

# Comando por defecto para correr el servidor de desarrollo
CMD ["python", "spavh/manage.py", "runserver", "0.0.0.0:8000"]
