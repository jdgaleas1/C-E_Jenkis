#!/bin/bash

echo "🛑 Deteniendo contenedores..."
docker-compose down

echo "🔥 Eliminando volúmenes..."
docker volume rm \
  ordenes_data \

echo "🔄 Reconstruyendo microservicios..."
docker-compose up --build
