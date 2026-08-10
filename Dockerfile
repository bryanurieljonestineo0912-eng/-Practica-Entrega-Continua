FROM python:3.11-slim

WORKDIR /app

# Copiamos dependencias e instalamos
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el resto de la aplicación
COPY . .

EXPOSE 5000

# Ejecutamos con gunicorn en producción
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
