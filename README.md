# Project_1
This is my First project using Html, CSS, Git, Docker, Jenkins

Here's a clear and professional version of the **steps** you can include in your `README.md` file:

---

## 🚀 Project: CI/CD with Jenkins, Docker, and Nginx

This project demonstrates a simple CI/CD pipeline where Jenkins pulls code from GitHub, builds a Docker image, and deploys it on an Nginx server.

---

### 🔧 Steps to Reproduce

#### 1️⃣ Push Code to GitHub  
I pushed my **HTML**, **CSS**, and **Dockerfile** from my local machine to this GitHub repository.

```bash
git init
git add .
git commit -m "Initial commit with HTML, CSS, and Dockerfile"
git remote add origin https://github.com/Vikas596/Project_1.git
git push -u origin main
```

---

#### 2️⃣ Set Up CI/CD Pipeline in Jenkins

- Open Jenkins Web UI: `http://<your-ip>:8080`
- Create a **Freestyle Project**
- Under **Source Code Management**:
  - Select `Git`
  - Enter Repository URL: `https://github.com/Vikas596/Project_1.git`
- Under **Build Triggers**:
  - Enable **Poll SCM** or choose **GitHub hook trigger** if integrated
- Under **Build > Execute Shell**, add the following commands:

```bash
docker rm -f project_1 || true
docker rmi -f project_1 || true
docker build -t project_1 .
docker run -d -p 8081:80 --name project_1 project_1
```

---

#### 3️⃣ Docker Deployment Details

- **Docker Build**: Creates an image named `mywebimage` from your Dockerfile
- **Docker Run**: Runs the container and maps:
  - Container Port: `80`
  - Host Port: `8081` (accessible via `http://<your-ip>:8081`)
- **Nginx** serves your static HTML/CSS files inside the container

---

Let me know if you'd like to add images, Jenkins UI screenshots, or environment prerequisites to the README too!
