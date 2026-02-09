variable "rgs" {
  type = map(object({
    name     = string
    location = string
  }))

}

variable "networks" {
  type = map(object({
    vnet_name           = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    subnets = map(object({
      subnet_name      = string
      address_prefixes = list(string)
    }))
  }))
}

variable "pips" {
  type = map(object({
    pip_name            = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))
}

variable "computes" {
  type = map(object({
    nic_name             = string
    location             = string
    resource_group_name  = string
    vm_name              = string
    size                 = string
    subnet_name          = string
    virtual_network_name = string
    pip_name             = string
    admin_username       = string
    admin_password       = string
  }))

}

variable "sql_database" {
  type = map(object({
    sql_name                     = string
    resource_group_name          = string
    location                     = string
    db_name                      = string
    collation                    = string
    license_type                 = string
    administrator_login          = string
    administrator_login_password = string
  }))

}


