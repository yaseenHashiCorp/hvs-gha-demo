# Outputs file
output "catapp_url" {
  value = "http://${aws_eip.hashicat.public_dns}"
}

output "catapp_ip" {
  value = "http://${aws_eip.hashicat.public_ip}"
}

output "secret" {
  value = data.hcp_vault_secrets_secret.web_application.secret_value
  sensitive = false
}
