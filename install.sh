#!/bin/bash

# Update the package repository and install dependencies
sudo yum update -y
sudo yum install -y yum-utils

# Add the HashiCorp Linux repository
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

# Install Terraform
sudo yum -y install terraform

# Install EPEL repository
sudo amazon-linux-extras install epel -y

# Install Ansible
sudo yum install ansible -y

# Install Git
sudo yum install git -y

# Verify the installations
echo "Verifying installations..."
echo "Terraform version:"
terraform -v

echo "Ansible version:"
ansible --version

echo "Git version:"
git --version

echo "Installation completed successfully."
