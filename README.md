# Automating Deployment with Kubernetes
### This project outlines a full DevOps lifecycle for a monolithic web application hosted on  GitHub. It involves implementing a Git workflow with monthly releases (on the 25th). On every push to the master branch, Jenkins triggers a build, containerizes the application using a custom Dockerfile, and pushes the image to Docker Hub.

### A Kubernetes cluster then deploys the image with 2 replicas using a Node-Port service on port 30008. Configuration management tools ensure the required software (Docker, Kubernetes, Jenkins, Java) is installed on specified nodes, while Terraform is used to provision the infrastructure on AWS.

* ➢ It simulates a full DevOps lifecycle, including version control, continuous integration, and automated deployments. 
* ➢ It involves Docker containerization, custom image building, and deployment to a Kubernetes cluster with proper networking (Node-Port). 
* ➢ The pipeline includes GitHub integration and Jenkins automation. 
* ➢ It also uses Terraform for infrastructure provisioning on AWS. 
* ➢ Configuration management is required to install the necessary tools across multiple worker nodes.

* ###  Link to Infrastructure Repo -> https://github.com/Shudhoo/capstone-project-2

### As a part of configuration management I created roles to install required packages on specific nodes. Like  
* ➢ Java, Jenkins on Jenkins-Master-Node.
* ➢ Java, Docker, Kubernetes on Kubernetes-Master-Node.
* ➢ Docker, Kubernetes on Kubernetes-Slaves.
#### So created 3 roles and a Playbook to run these roles across specific “hosts”. The Ansible folder is present in the repository.

## Reference Documentation
 - [Ansible-Documentation](https://docs.ansible.com/)
 - [Terraform-Documentation](https://developer.hashicorp.com/terraform/docs)
 - [Kubernetes-Documentation](https://kubernetes.io/docs/home/)
## Everything Is Documented in this PDF -> 


