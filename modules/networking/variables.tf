variable "project_environment" {
  type = string
}
variable "project_name" {
  description = "Project name"
  type        = string
}
variable "vpc_cidr" {
  description = "VPC CIDR range"
  type        = string
}
variable "app_sybnet_cidr" {
  description = "VPC CIDR range"
  type        = string
}
variable "aws_vpc_id" {
  type = string
}
