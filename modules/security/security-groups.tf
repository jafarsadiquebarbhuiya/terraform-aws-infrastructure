# Create a security group
resource "aws_security_group" "sg" {
  name   = "secgrp-${var.project_name}-${var.project_environment}"
  vpc_id = var.aws_vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Replace with your desired IP range
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "secgrp-${var.project_name}-${var.project_environment}"
    ENV  = upper(var.project_environment)

  }
}
