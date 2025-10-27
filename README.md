# 🐳 01 — Introduction to Docker

Welcome to the first step of the **Dockerization Lab**!  
In this module, you’ll learn what Docker is, how it works, and build your very first container.

---

## 🧠 What is Docker?

**Docker** is a platform that allows you to package your application and its dependencies into **containers**.  
A container is a lightweight, isolated environment that runs the same everywhere — on your machine, on a server, or in the cloud.

Think of it as a **box** that contains your app, libraries, and configuration — so you never have to say “but it worked on my computer” again 😅.

---

## 🧩 Key Concepts

| Concept | Description |
|----------|-------------|
| **Image** | A blueprint for creating containers. It contains the app code and all dependencies. |
| **Container** | A running instance of an image. You can start, stop, or remove it. |
| **Dockerfile** | A file that defines how to build an image step by step. |
| **Volume** | A way to persist data even when containers are removed. |
| **Network** | Lets containers communicate with each other. |

---

## 🧪 Your First Docker App — *Hello Docker!*

We’ll use a simple Node.js example.

### 📁 Folder structure
```
examples/hello-docker/
├── app.js
└── Dockerfile
```
### 🧰 app.js

```js
const http = require('http');

const server = http.createServer((req, res) => {
  res.end('👋 Hello from inside your Docker container!');
});

server.listen(3000, () => {
  console.log('Server running on port 3000');
});
```

### 🐳 Dockerfile
Dockerfile
```ymal
# Use Node.js official image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy files
COPY . .

# Expose port
EXPOSE 3000
```
# Running the app
CMD ["node", "app.js"]
🚀 Build & Run
Build the image:
```bash
docker build -t hello-docker .
```
Run the container:

```bash

docker run -p 3000:3000 hello-docker
Visit 👉 http://localhost:3000
```
You should see:

👋 Hello from inside your Docker container!

### 🧹 Stop & Remove
List containers:

```bash
docker ps
```
Stop it:

```bash
docker stop <container_id>
```
Remove it:

```bash
docker rm <container_id>
```
🎓 Summary
✅ You built your first image
✅ You ran your first container
✅ You learned the core Docker concepts

