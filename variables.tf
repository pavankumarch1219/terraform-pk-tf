variable "resource_group_name" {
  type        = string
  description = "Azure Resource Group name"
  default     = "PAVANKUMAR-CH"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "Central India"
}

variable "vnet_name" {
  type        = string
  description = "Virtual Network name"
  default     = "ch-pavan-vnet"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "VNet address space"
  default     = ["10.50.0.0/16"]
}

variable "subnet_name" {
  type        = string
  description = "Subnet name"
  default     = "ch-pavan-subnet"
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "Subnet address prefixes"
  default     = ["10.50.1.0/24"]
}


variable "nsg_name" {
  type        = string
  description = "Network Security Group name"
  default     = "ch-pavan-nsg"
}

variable "public_ip_name" {
  type        = string
  description = "Public IP name"
  default     = "ch-pavan-pip"
}

variable "nic_name" {
  type        = string
  description = "Network Interface name"
  default     = "ch-pavan-nic"
}


variable "vm_name" {
  type        = string
  description = "Linux VM name"
  default     = "ch-pavan-linux-vm"
}



variable "vm_size" {
  type        = string
  description = "VM size"
  default     = "Standard_D2ls_v5"
}


variable "admin_username" {
  type        = string
  description = "Admin username"
  default     = "azureuser"
}

variable "ssh_public_key_path" {
  type        = string
  description = "Path to SSH public key"
  default     = "/home/azureuser/.ssh/pavan.pub"
}

