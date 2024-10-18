output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "public_ip_address" {
  description = "The public IP address of the virtual machine"
  value       = azurerm_public_ip.public_ip.ip_address
}

output "vm_id" {
  description = "The ID of the virtual machine"
  value       = azurerm_virtual_machine.vm.id
}
