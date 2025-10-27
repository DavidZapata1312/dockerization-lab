#!/bin/bash
# ===========================================
# 🐳 GUIA BÁSICA DE DOCKER
# ===========================================
# Este script te guía por los primeros pasos
# para entender cómo funcionan las imágenes
# y contenedores en Docker.
# ===========================================

echo "👋 Bienvenido al laboratorio de introducción a Docker"
sleep 1

# 1️⃣ Mostrar versión de Docker
echo "🔹 Verificando instalación de Docker..."
docker --version
echo "✅ Docker instalado correctamente"
sleep 1

# 2️⃣ Descargar una imagen simple de prueba
echo "⬇️ Descargando la imagen de hello-world..."
docker pull hello-world
sleep 1

# 3️⃣ Ejecutar un contenedor desde esa imagen
echo "🚀 Ejecutando contenedor hello-world..."
docker run hello-world
sleep 2

# 4️⃣ Listar las imágenes disponibles
echo "📦 Mostrando las imágenes descargadas:"
docker images
sleep 1

# 5️⃣ Crear y ejecutar tu propio contenedor
echo "⚙️ Construyendo la imagen hello-docker (desde tu Dockerfile)..."
docker build -t hello-docker ./examples/hello-docker
sleep 1

echo "🏃 Ejecutando el contenedor hello-docker en el puerto 3000..."
docker run -d -p 3000:3000 hello-docker
sleep 1

# 6️⃣ Mostrar contenedores en ejecución
echo "🧱 Contenedores activos:"
docker ps
sleep 1

echo "✅ Contenedor 'hello-docker' funcionando. Visita http://localhost:3000"
echo "💡 Para detenerlo: docker stop <container_id>"
echo "💡 Para eliminarlo: docker rm <container_id>"
