module "dev_networking" {
  source              = "../../modules/networking"
  vpc_cidr            = var.vpc_cidr
  project_name        = var.project_name
  project_environment = var.project_environment
  app_subnet_cidr     = var.app_subnet_cidr
  aws_vpc_id          = module.dev_networking.vpc_id_output
}

module "dev_sg" {
  source              = "../../modules/security"
  project_name        = var.project_name
  project_environment = var.project_environment
  aws_vpc_id          = module.dev_networking.vpc_id_output
}

module "dev_ec2" {
  source              = "../../modules/compute"
  project_name        = var.project_name
  project_environment = var.project_environment
  ec2_ami_id          = var.ec2_ami_id
  ec2_instance_type   = var.ec2_instance_type
  app_subnet_id       = module.dev_networking.appsubnet_id_output
  vpc_security_group_ids = [
    module.dev_sg.sg_id_output
  ]

}


