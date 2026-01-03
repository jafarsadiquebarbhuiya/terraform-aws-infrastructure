resource "aws_subnet" "app_subnet" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.app_subnet_cidr

  tags = {
    Name = "subnet-app-${var.project_name}-${var.project_environment}"
    ENV  = upper(var.project_environment)
  }
}
