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
variable "app_subnet_cidr" {
  description = "VPC CIDR range"
  type        = string
}
variable "ec2_ami_id" {
  type = string

}

variable "ec2_instance_type" {
  type = string
}

