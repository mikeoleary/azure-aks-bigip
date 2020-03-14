# azure-aks-bigip-terraform
Deploys Azure AKS app protected by BIG-IP for demo use
## Purpose and Overview<br> <br> 
This demo will configure a demo environment, running Kubernetes (AKS) and a demo app composed of microservices. This web application will be exposed to the internet via a HA-pair of BIG-IP devices. The pods running in AKS will have ephemeral, changing IP addresses every time this demo is run, however the BIG-IP is configured by F5 CIS, which runs inside Kubernetes and constantly updates the BIG-IP.

The final step of this demo is to view the web application from the internet. The URL to visit will be output in the Terraform outputs after the successful provisioning of the environment.

## Architecture<br> <br> 
![Image of Architecture](images/azure-aks-terraform.png)

## Instructions
