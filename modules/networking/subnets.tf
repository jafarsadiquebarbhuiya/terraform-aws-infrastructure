resource "aws_subnet" "app_subnet" {
  vpc_id     = var.aws_vpc_id
  cidr_block = var.app_sybnet_cidr

  tags = {
    Name = "subnet-app-${var.project_name}-${var.project_environment}"
    ENV  = upper(var.project_environment)

  }
}
