# Create a VPC
resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "vpc-${var.project_name}-${var.project_environment}"
    ENV  = upper(var.project_environment)

  }
}
