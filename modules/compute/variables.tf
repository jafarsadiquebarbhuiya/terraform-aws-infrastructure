variable "project_environment" {
  type = string
}
variable "project_name" {
  description = "Project name"
  type        = string
}
variable "ec2_ami_id" {
  type = string

}
variable "app_subnet_id" {
  type = string
}
variable "ec2_instance_type" {
  type = string
}
variable "vpc_security_group_ids" {
  type        = list(string)
  description = "List of security group IDs"
}
