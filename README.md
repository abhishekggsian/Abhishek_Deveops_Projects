# Abhishek_Deveops_Projects
# Azure Virtual Machine Setup using Terraform

This project uses Terraform to provision and manage Azure infrastructure including a Virtual Machine (VM) and its dependencies. The configuration is modular and structured for clarity and reusability.

## 🔧 What this project does

This Terraform configuration performs the following tasks on Microsoft Azure:

1. **Provider Setup** (`provider.tf`)
   - Authenticates with Azure using the configured credentials.

2. **Resource Group** (`rf.tf`)
   - Creates a resource group to hold all Azure resources.

3. **Storage Account** (`storage.tf`)
   - Sets up a storage account for potential use with virtual machines or diagnostics.

4. **Virtual Network & Subnet** (`vnet.tf`, `subnet.tf`)
   - Creates a virtual network and subnet to host the VM.

5. **Network Interface & Public IP** (`vnic.tf`)
   - Provisions a network interface and optionally a public IP address for the VM.

6. **Virtual Machine** (`virtual_machine.tf`)
   - Deploys a Windows-based or Linux-based virtual machine with OS disk configuration and admin credentials.
   - Includes image reference, disk settings, and network interface attachment.

## 📁 Project Structure

VM-Folder/
├── provider.tf # Azure provider configuration
├── rf.tf # Resource group
├── storage.tf # Storage account
├── vnet.tf # Virtual network
├── subnet.tf # Subnet
├── vnic.tf # Network interface & public IP
├── virtual_machine.tf # VM configuration
├── variable.tf # Input variable definitions
├── terraform.tfvars # Variable values (input)
└── terraform.tfstate # Terraform state (generated)

## 📦 How to Use

1. **Initialize Terraform**
terraform init

**Validate Configuration**
terraform validate

**Plan the Deployment**
terraform plan

**Apply the Configuration**
terraform apply
