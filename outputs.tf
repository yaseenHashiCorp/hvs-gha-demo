# Outputs file
output "catapp_url" {
  value = "http://${aws_eip.hashicat.public_dns}"
}

output "catapp_ip" {
  value = "http://${aws_eip.hashicat.public_ip}"
}

output "secrets" {
  value = data.hcp_vault_secrets_app.web_application.secrets
  sensitive = true
}
