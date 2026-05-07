# ============================================================
# main.tf - AWS EC2 Instance using Terraform
# Author  : Terraform Student
# Region  : ap-south-1 (Mumbai)
# ============================================================

# ─── Provider ────────────────────────────────────────────────
provider "aws" {
  region = var.aws_region
}

# ─── EC2 Instance ────────────────────────────────────────────
resource "aws_instance" "my_instance" {
  ami           = var.ami_id
  instance_type = "t3.micro"

  tags = {
    Name        = "Terraform-Student-Instance"
    Environment = "Learning"
    ManagedBy   = "Terraform"
  }
}
