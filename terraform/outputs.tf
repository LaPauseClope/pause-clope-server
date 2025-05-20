output "vm_public_ip" {
  value = azurerm_linux_virtual_machine.lapauseclope.public_ip_address
}

output "vm_public_ip" {
  value = azurerm_public_ip.lapauseclope.ip_address
}

output "ssh_private_key" {
  value     = tls_private_key.lapauseclope.private_key_pem
  sensitive = true
}
