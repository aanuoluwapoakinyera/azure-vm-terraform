variable "location" {
  description = "Location where Azure resources will be deployed"
  default = "East US"
}

variable "resource_group_name" {
  description = "Name of the Azure resource group"
  default = "myResourceGroup"
}

variable "vm_size" {
  description = "Size of the virtual machine"
  default = "Standard_B1s"
}

variable "admin_username" {
  description = "Admin username for Azure VM"
  default = "adminuser"
}

variable "admin_password" {
  description = "Admin password for Azure VM"
}

variable "ssh_key" {
  description = "SSH public key file"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}