output "instance_public_ip" {
  description = "Adresse IP publique de l’instance EC2"
  value       = aws_instance.web_server.public_ip
}

output "instance_id" {
  description = "ID de l'instance EC2"
  value       = aws_instance.web_server.id
}

