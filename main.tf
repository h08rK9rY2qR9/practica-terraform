resource "opennebula_virtual_machine" "web_server" {
  name        = "web-prod-${var.user_id}"
  template_id = var.template_base_id
  memory      = 2048
  vcpu        = 2


  nic {
    network_id = data.opennebula_virtual_network.network_data.id
  }

  context = {
    hostname = "db-${var.user_id}"
    network  = "YES"
  }
}