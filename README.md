

## 🚀 DevOps CI/CD Pipeline on AWS

This project demonstrates an **end-to-end DevOps pipeline** built from scratch using modern tools and best practices.

It automates the process of:

* Infrastructure provisioning
* Configuration management
* Continuous integration
* Continuous delivery

---

## 🧭 Architecture Overview

```text
GitHub → Jenkins → Maven Build
        → SonarQube (Code Quality)
        → Nexus (Artifact & Docker Registry)
        → Docker → AWS EC2 Deployment
```

---

## ⚙️ Tech Stack

* **Cloud:** AWS (EC2, VPC)
* **Infrastructure as Code:** Terraform
* **Configuration Management:** Ansible
* **CI/CD:** Jenkins
* **Code Quality:** SonarQube
* **Artifact Repository:** Nexus
* **Containerization:** Docker
* **Application:** Spring Boot (Java)

---

## 🏗️ Project Structure

```
.
├── terraform/        # Infrastructure provisioning
├── ansible/         # Configuration management
├── app/             # Spring Boot application
└── README.md
```

---

## 🚀 Features

✔ Automated infrastructure setup using Terraform
✔ Configuration management using Ansible
✔ CI pipeline with Jenkins
✔ Code quality checks with SonarQube
✔ Artifact and image storage in Nexus
✔ Dockerized application deployment
✔ Automated deployment to EC2

---

## 🔧 Setup Instructions

### 1. Clone Repository

```bash
git clone https://github.com/<your-username>/devops-ci-cd-pipeline-aws.git
cd devops-ci-cd-pipeline-aws
```

---

### 2. Provision Infrastructure

```bash
cd terraform
terraform init
terraform apply
```

---

### 3. Configure Servers

```bash
cd ansible
ansible-playbook -i inventory.ini playbook.yml
```

---

### 4. Setup Jenkins

* Access Jenkins UI:
  `http://<jenkins-ip>:8080`
* Install plugins
* Configure tools (Maven, JDK, SonarQube)

---

### 5. Run Pipeline

* Create Jenkins pipeline job
* Connect GitHub repo
* Run pipeline

---

### 6. Access Application

```text
http://<app-server-ip>:8080
```

---

## 🔐 Security Configuration

Ensure the following ports are open in your security group:

| Port | Purpose       |
| ---- | ------------- |
| 22   | SSH           |
| 8080 | App / Jenkins |
| 9000 | SonarQube     |
| 8081 | Nexus         |
| 8082 | Nexus Docker  |

---

## ⚠️ Challenges Faced

* Initial application setup issues (database configuration)
* SSH and Ansible connectivity problems
* Docker + Nexus authentication issues
* Terraform state and refactoring challenges
* Infrastructure replacement due to subnet changes
* EKS multi-AZ requirement (led to EC2 deployment decision)

---

## 📚 Key Learnings

* Infrastructure should be **automated and reproducible**
* Always validate **SSH before Ansible**
* Small Terraform changes can trigger major resource updates
* Tool integration is more complex than individual tools
* Simpler architectures can be more practical than complex ones

---

## 🚀 Future Improvements

* Deploy application on Kubernetes (EKS)
* Add monitoring (Prometheus & Grafana)
* Implement logging (ELK stack)
* Use HTTPS with Load Balancer
* Add auto-scaling

---

## 🤝 Contributing

Contributions are welcome! Feel free to fork and improve the project.

---

## 📬 Contact

If you found this useful, feel free to connect!

---

# ⭐ If you like this project, give it a star!

---


