output "ip" {
  value = "${azurerm_public_ip.lbpip.ip_address}"
}