# Create production virtual machines
module "vm_deployment" {
  for_each          = toset(var.resource_location)
  source            = "./Modules/Compute"
  vm_name           = var.vm_name
  vm_instance_count = var.vm_instance_count
  vm_size           = var.vm_size
  resource_location = each.value
  network_address   = lookup(var.network_address, each.value, null)
  
}
