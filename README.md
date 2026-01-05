#  End-to-End CI/CD Pipeline with Docker & GitHub Actions

##  Project Overview
This project demonstrates a **complete, production-style CI/CD system** that automatically builds, tests, scans, and deploys a containerized web application using **Docker, Docker Compose, and GitHub Actions**.

The pipeline follows real-world DevOps practices used in modern organizations, covering **security, automation, deployment, and observability**.

---

##  Architecture Overview

### Application Architecture
- **Frontend**: Static HTML served via Nginx
- **Backend**: Python Flask REST API
- **Database**: PostgreSQL
- **Containerization**: Docker (multi-stage builds)
- **Local & Staging Orchestration**: Docker Compose
- **CI/CD**: GitHub Actions
- **Security**: Trivy container image scanning

---

##  Project Structure

```text
cicd-docker-project/
│
├── backend/
│   ├── app.py
│   ├── requirements.txt
│   └── Dockerfile
│
├── frontend/
│   ├── index.html
│   └── Dockerfile
│
├── db/
│   └── init.sql
│
├── docker-compose.yml
├── deploy.sh
├── migrate.sh
│
├── .github/
│   └── workflows/
│       └── cicd.yml
│
└── README.md

-------------------------------------------------------------------------------------------------------

Prerequisites
------------------------------------

1.Make sure the following tools are installed on your system:

2.Docker

3.Docker Compose

4.Git

5.GitHub account

6.Docker Hub account

------------------------------------------------------------------------------------------------------------




Step 1: Clone the Repository

git clone https://github.com/your-username/cicd-docker-project.git
cd cicd-docker-project
-------------------------------------------------------------------------------------------



Step 2: Start the Application

docker ps

-------------------------------------------------------------------------------------

Step 4: Access the Application

Frontend: http://localhost:8080

Backend: http://localhost:5000

Health Check: http://localhost:5000/health



------------------------------------------------------------------------------




I/CD Pipeline Flow (GitHub Actions)

The CI/CD pipeline is triggered automatically on every push to the main branch.

Pipeline Stages

Checkout source code

Build Docker images

Run unit tests inside containers

Scan images using Trivy for vulnerabilities

Tag Docker images with commit SHA

Push images to Docker Hub

Deploy application to staging environment

Run database migrations

Verify deployment via health checks