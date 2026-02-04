output "server_ip" {
  description = "Dirección IP asignada al servidor"
  value       = coalesce(opennebula_virtual_machine.web_server.nic[0].computed_ip, "IP_PENDIENTE")
}