locals {
  location_prefix            = replace(var.resource_location, "/[a-z[:space:]]/", "")
  resource_group             = "${var.resource_group}-${local.location_prefix}"
  vm_name                    = "${var.vm_name}-${local.location_prefix}"
  platform_location_az_count = lookup(var.platform_location_az, var.resource_location, null)
}
