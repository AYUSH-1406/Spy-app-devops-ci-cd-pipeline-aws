terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket         = "devops-tf-state-ayush"
    key            = "devops-project/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile   = true
  }
}


module "vpc" {
  source = "./modules/vpc"

  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}

module "security_groups" {
  source = "./modules/security_groups"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"

  ami              = "ami-05d2d839d4f73aafb" # Ubuntu (ap-south-1)
  public_subnet_id = module.vpc.public_subnet_id
  sg_id            = module.security_groups.sg_id
  key_name         = var.key_name
}

