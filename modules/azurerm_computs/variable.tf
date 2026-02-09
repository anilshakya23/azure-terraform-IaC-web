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
    admin_username        = string
    admin_password       = string
  }))

}
