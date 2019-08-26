#output "public_ip_address" {
#  value = "${data.azurerm_public_ip.lbpip.ip_address}"
#}
#output "public_ip_address" {
#  value = azurerm_lb.lb.frontend_ip_configuration
#}

#output "azurerm_public_ip_address" {
#  description = "the ip address for the azurerm_lb_public_ip resource"
#  value       = "${azurerm_public_ip.lb.*.ip_address}"
#}
output "vm_fqdn" {
  value = "${azurerm_public_ip.lbpip.fqdn}"
}
