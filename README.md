# Simple Jenkins CI/CD Pipeline

Automated **CI/CD workflow** using Jenkins, Docker, and GitHub for deploying a static HTML website.

---

## 🚀 Features
- Clone code from GitHub automatically  
- Build Docker image for HTML site  
- Push image to DockerHub  
- Deploy container on Jenkins host  
- Auto-clean old containers to avoid port conflicts  

---

## 📂 Project Structure
\`\`\`
Simple-Jenkins-Pipeline-for-CI-CD/
├── index.html
├── about.html
├── Dockerfile
└── jenkins/Jenkinsfile
\`\`\`

---

## 🛠 Technologies
- Jenkins – CI/CD automation  
- Docker – Containerization  
- GitHub – Source code & webhook triggers  
- Nginx – Serving HTML content  

---

## ⚡ Quick Setup
1. Install **Jenkins** & **Docker**.  
2. Add Jenkins user to Docker group:
\`\`\`bash
sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
\`\`\`
3. (Optional) Add DockerHub credentials in Jenkins.  
4. Create a Jenkins pipeline pointing to \`jenkins/Jenkinsfile\`.  
5. Add GitHub webhook:  
\`\`\`
http://<JENKINS_PUBLIC_IP>:8080/github-webhook/
\`\`\`
6. Push code → Jenkins automatically builds, pushes, and deploys.  

---

## 📦 Run Locally (Optional)
\`\`\`bash
docker build -t my-html-app .
docker run -d -p 8088:80 my-html-app
\`\`\`

---

## 🌐 Access Your App
\`\`\`
http://<EC2_PUBLIC_IP>:8088
\`\`\`
