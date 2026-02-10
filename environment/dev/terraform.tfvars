rgs = {
  rg1 = {
    name     = "todo-rg-dev-001"
    location = "South Africa North"
  }
}

networks = {
  vnet1 = {
    vnet_name           = "todo-vnet-dev-001"
    location            = "South Africa North"
    resource_group_name = "todo-rg-dev-001"
    address_space       = ["10.0.0.0/16"]
    subnets = {
      subnet1 = {
        subnet_name      = "todo-frontend-subnet-dev-001"
        address_prefixes = ["10.0.1.0/24"]
      }

      subnet2 = {
        subnet_name      = "todo-backend-subnet-dev-001"
        address_prefixes = ["10.0.2.0/24"]
      }
    }
  }
}

pips = {
  pip1 = {
    pip_name            = "todo-frontend-pip-dev-001"
    resource_group_name = "todo-rg-dev-001"
    location            = "South Africa North"
    allocation_method   = "static"

  }

  pip2 = {
    pip_name            = "todo-backend-pip-dev-001"
    resource_group_name = "todo-rg-dev-001"
    location            = "South Africa North"
    allocation_method   = "static"

  }
}

computes = {
  vm1 = {
    nic_name             = "todo-frontend-nic-dev-001"
    location             = "South Africa North"
    resource_group_name  = "todo-rg-dev-001"
    vm_name              = "todo-frontend-vm-dev-001"
    size                 = "Standard_D2s_v3"
    subnet_name          = "todo-frontend-subnet-dev-001"
    pip_name             = "todo-frontend-pip-dev-001"
    virtual_network_name = "todo-vnet-dev-001"
    admin_username       = "Nemuadmin"
    admin_password       = "Nemuuser@1234"
  }
  vm2 = {
    nic_name             = "todo-backend-subnet-dev-001"
    location             = "South Africa North"
    resource_group_name  = "todo-rg-dev-001"
    vm_name              = "todo-backend-vm-dev-001"
    size                 = "Standard_D2s_v3"
    subnet_name          = "todo-backend-subnet-dev-001"
    pip_name             = "todo-backend-pip-dev-001"
    virtual_network_name = "todo-vnet-dev-001"
    admin_username       = "Nemuadmin"
    admin_password       = "Nemuuser@1234"
  }
}

sql_database = {
  sql1 = {
    sql_name                     = "sql-dev-evoan43-001"
    resource_group_name          = "todo-rg-dev-001"
    location                     = "South Africa North"
    db_name                      = "todo-sql_data-dev-001"
    collation                    = "SQL_Latin1_General_CP1_CI_AS"
    license_type                 = "LicenseIncluded"
    administrator_login          = "Nemuadmin"
    administrator_login_password = "Nemuuser#9718"

  }
}