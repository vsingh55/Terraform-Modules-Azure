output "nic_name" {
    value = azurerm_network_interface.nic.nic_name
}

output "vm_name" {
    value = azurerm_linux_virtual_machine.vm.vm_name
}
