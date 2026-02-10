module "rg" {
    source = "../../modules/azurerm_rg"
    rgs = var.rgs
}

module "network" {
    depends_on = [ module.rg ]
    source = "../../modules/azurerm_network"
    networks = var.networks
}

module "pip" {
    depends_on = [ module.rg ]
    source = "../../modules/azurerm_pip"
    pips = var.pips
}

module "compute" {
    depends_on = [ module.rg, module.network, module.pip ]
    source = "../../modules/azurerm_computs"
    computes = var.computes
}

module "sql" {
    depends_on = [ module.rg ]
  source = "../../modules/azurerm_sql"
  sql_database = var.sql_database
}