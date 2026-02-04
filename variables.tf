variable "user_id" {
  type        = string
  description = "Usuario de OpenNebula. Usado para autenticación y como parte del hostname."
}
variable "api_key" {
  type        = string
  sensitive   = true # ¡Importante! Oculta el valor en logs.
  description = "Clave de sesión o token de OpenNebula."
}


variable "template_base_id" {
  type        = number
  description = "ID de la plantilla base"
}
variable "prod_network_name" {
  type        = string
  description = "Nombre de la red virtual existente."
}
