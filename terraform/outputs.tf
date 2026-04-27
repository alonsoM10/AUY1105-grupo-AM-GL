output "vpc_id" {
  description = "ID de la VPC"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "ID de la Subnet"
  value       = aws_subnet.public.id
}

output "security_group_id" {
  description = "ID del Security Group"
  value       = aws_security_group.main.id
}

output "ec2_public_ip" {
  description = "IP pública de la EC2"
  value       = aws_instance.main.public_ip
}

output "ec2_instance_id" {
  description = "ID de la instancia EC2"
  value       = aws_instance.main.id
}