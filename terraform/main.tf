resource "azurerm_resource_group" "lapauseclope" {
  name     = "LaPauseClope"
  location = var.location
}

resource "azurerm_virtual_network" "lapauseclope" {
  name                = "lapauseclope-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.lapauseclope.location
  resource_group_name = azurerm_resource_group.lapauseclope.name
}

resource "azurerm_subnet" "lapauseclope" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.lapauseclope.name
  virtual_network_name = azurerm_virtual_network.lapauseclope.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "lapauseclope" {
  name                = "lapauseclope-nic"
  location            = azurerm_resource_group.lapauseclope.location
  resource_group_name = azurerm_resource_group.lapauseclope.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.lapauseclope.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "lapauseclope" {
  name                = "lapauseclope-machine"
  resource_group_name = azurerm_resource_group.lapauseclope.name
  location            = azurerm_resource_group.lapauseclope.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = var.admin_password
  network_interface_ids = [
    azurerm_network_interface.lapauseclope.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}