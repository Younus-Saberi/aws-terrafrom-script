provider "aws" {
  region = "us-east-1"
  access_key = "my-access-key"
  secret_key = "my-secert-key"
}

module "vpc" {
  source = "./modules/vpc"
}

module "security_group" {
  source = "./modules/security_group"
}

module "ec2" {
  source             = "./modules/ec2"
  public_subnet_id   = module.vpc.public_subnet_id
  security_group_id = module.security_group.my_security_group_id
}
