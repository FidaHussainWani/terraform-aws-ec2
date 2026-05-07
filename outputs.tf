# ============================================================
# outputs.tf - Output values after applying Terraform
# ============================================================

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.my_instance.id
}

output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.my_instance.public_ip
}

output "instance_private_ip" {
  description = "The private IP address of the EC2 instance"
  value       = aws_instance.my_instance.private_ip
}

output "instance_state" {
  description = "The state of the EC2 instance"
  value       = aws_instance.my_instance.instance_state
}

output "availability_zone" {
  description = "Availability zone of the EC2 instance"
  value       = aws_instance.my_instance.availability_zone
}
