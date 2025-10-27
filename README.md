# 🐳 02 — Docker Compose Basics

Welcome to the second part of the **Dockerization Lab**.  
Here we will dockerize the **Sportline API** completely using a `docker-compose.yml` file that orchestrates the API and PostgreSQL.

---

## 🎯 Goal

By the end of this module you will:

- Understand how a `docker-compose.yml` file structures multiple services.  
- Launch the full Sportline stack (API + PostgreSQL) with a single command.  
- Learn about environment variables, volumes, networks, and dependencies in Docker.  
- Connect concepts from Part 01 (images, containers, Dockerfile) to a real project.

---

## 📂 Sportline Project Context

The Sportline repo includes:

- `Dockerfile` → builds the API image (TypeScript + Node.js + Express + Sequelize).  
- `docker-compose.yml` → defines two services: `app` (API) and `db` (PostgreSQL).  
- `.env.example` → environment variables for Docker.  
- Stack includes Node.js, Express, TypeScript, Sequelize (PostgreSQL), and JWT authentication.

---

## 🧩 Docker Compose File Overview

```yaml

🔹 Line-by-Line Breakdown 
version: '3.8' → Compose file version.

services: → defines containers to run.

App service:

build: . → builds image from Dockerfile.

container_name → friendly container name.

ports → map host 4000 to container 4000.

depends_on → ensures DB is healthy before starting.

networks → connects containers internally.

environment → config for app & DB connection + JWT secrets + seeder flag.

restart → automatic restart policy.

deploy.resources.limits → CPU/memory constraints.

DB service:

image: postgres:16 → official PostgreSQL image.

container_name → friendly container name.

restart → always restart on failure.

environment → DB user/password/dbname.

healthcheck → ensures DB is ready before app connects.

ports → map DB to host for development.

volumes → persist database data.

deploy.resources.limits → CPU/memory constraints.

Volumes & Networks:

volumes: → defines persistent storage (pgdata).

networks: → defines internal network (app-network).
```
## 🚀 How to run

```bash
docker compose up --build -d
```

Builds the API image if needed.

Starts both containers (API + DB).

Waits for DB to be healthy before launching API.

Access API at: http://localhost:4000
Swagger docs: http://localhost:4000/api/docs

Stop and remove containers:

```bash

docker compose down
```
## 🔧 Tips & Best Practices

Change JWT secrets before production.

Use migrations instead of auto-sync in production.

Only expose necessary ports.

Mount volumes for DB and logs.

Set resource limits to avoid hogging the host.

## 🔮 Next Steps


Next module will cover:

Dev environment with hot-reload.

Additional services (e.g., Redis).

CI/CD pipelines with Docker.

Production-ready Dockerfile with multistage builds and image optimization.
