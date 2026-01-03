# resource "aws_key_pair" "ec2_key" {
#   key_name   = "key-${var.project_name}-${var.project_environment}"
#   public_key = file("${path.module}/key-demo-dev.pub")
# }
