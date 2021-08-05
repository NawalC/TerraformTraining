variable "resource_group" {
  description = "Name of resource group"
  type        = string
  default     = "VirtualMachineGroup"
}

variable "resource_location" {
  description = "Location of resources"
  type        = list(string)
  default = [
    "UK South",
    "North Europe"
  ]
}

variable "vm_name" {
  description = "Name of vm"
  type        = string
  default     = "VM"
}

variable "vm_size" {
  description = "Size of vm"
  type        = string
  default     = "Standard_B1s"
}

variable "vm_instance_count" {
  description = "Number of vms to deploy"
  type        = string
  default     = 2
}

variable "network_address" {
  description = "Network address space"
  type        = map(string)
  default = {
    "UK South"         = "10.0.0.0/22"
    "North Europe"     = "10.1.0.0/22"
    "North Central US" = "10.2.0.0/22"
  }
}

