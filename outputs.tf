output "PUBLIC_IP" {
  description = "Public ip address of RMM server."
  value       = var.attach_floating_ip ? ibm_is_floating_ip.fip[0].address : "Public IP address is not created."
}