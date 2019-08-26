#output "public_ip_address" {
#  value = "${data.azurerm_public_ip.lbpip.ip_address}"
#}
output "public_ip_address" {
  value = azurerm_lb.LoadBalancerFrontEnd.public_ip_address_id
}
