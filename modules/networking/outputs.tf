output "vpc_id_output" {
  value = aws_vpc.vpc.id

}
output "appsubnet_id_output" {
  value = aws_subnet.app_subnet.id

}
