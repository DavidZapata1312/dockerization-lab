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

examples/hello-docker/
├── app.js
└── Dockerfile
