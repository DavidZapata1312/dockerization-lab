#!/bin/bash
# ===========================================
# ⚙️ GUIA DE DOCKER COMPOSE
# ===========================================
# Este script demuestra cómo levantar
# múltiples servicios con docker-compose,
# usando el ejemplo del proyecto Sportline.
# ===========================================

echo "👋 Bienvenido al laboratorio de Docker Compose"
sleep 1

# 1️⃣ Verificar instalación
echo "🔹 Verificando instalación de docker-compose..."
docker compose version
sleep 1

# 2️⃣ Levantar los servicios definidos en el YAML
echo "🚀 Levantando la aplicación y base de datos..."
docker compose up -d
sleep 3

# 3️⃣ Verificar servicios activos
echo "🧱 Mostrando contenedores activos:"
docker compose ps
sleep 2

# 4️⃣ Revisar logs del servicio principal
echo "📜 Mostrando logs de la aplicación:"
docker compose logs app
sleep 2

# 5️⃣ Entrar al contenedor de la base de datos
echo "🐘 Entrando al contenedor de PostgreSQL..."
docker exec -it sportline_db psql -U postgres -d sportlinedb -c "\l"
sleep 2

# 6️⃣ Detener y limpiar servicios
echo "🧹 Deteniendo y limpiando contenedores..."
docker compose down
sleep 1

echo "✅ Ejemplo completado con éxito."
echo "💡 Puedes editar docker-compose.yml para probar nuevos servicios."
