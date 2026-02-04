terraform {
  required_providers {
    opennebula = {
      source  = "opennebula/opennebula"
      version = "~> 1.5.0"
    }
  }
}
provider "opennebula" {
  endpoint = "https://opennebula.egibide.org/RPC2"
  username = var.user_id
  password = var.api_key
}


data "opennebula_virtual_network" "network_data" {
  name = var.prod_network_name
}