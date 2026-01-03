# Create an EC2 instance
resource "aws_instance" "ec2" {
  ami                         = var.ec2_ami_id        # Amazon Linux 2 AMI
  instance_type               = var.ec2_instance_type # Adjust instance type as needed
  subnet_id                   = var.app_subnet_id
  vpc_security_group_ids      = var.vpc_security_group_ids
  associate_public_ip_address = true

  root_block_device {
    volume_type = "gp2"
    volume_size = 50 # Adjust volume size as needed
  }

  #key_name = "key-${var.project_name}-${var.project_environment}" # Replace with your existing key pair name or create a new one
  key_name = "ec2-key"
  tags = {
    Name = "ec2-${var.project_name}-${var.project_environment}"
    ENV  = upper(var.project_environment)

  }
}
