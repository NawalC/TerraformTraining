
/*# Create production windows_virtual_machine virtual machines
module "vm_deployment" {
  for_each           = toset(var.resource_location)
  source             = "./Modules/windows_virtual_machine"
  vm_name            = var.vm_name
  vm_instance_count  = var.vm_instance_count
  vm_size            = var.vm_size
  vm_data_disk_count = var.vm_data_disk_count
  vm_data_disk_size  = var.vm_data_disk_size
  resource_location  = each.value
  network_address    = lookup(var.network_address, each.value, null)
}*/


# Create production linux_virtual_machine virtual machines
module "vm_deployment" {
  for_each           = toset(var.resource_location)
  source             = "./Modules/linux_virtual_machine"
  vm_name            = var.vm_name
  vm_instance_count  = var.vm_instance_count
  vm_size            = var.vm_size
  vm_data_disk_count = var.vm_data_disk_count
  vm_data_disk_size  = var.vm_data_disk_size
  resource_location  = each.value
  network_address    = lookup(var.network_address, each.value, null)
}