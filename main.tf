# Root module - Calls all child modules

module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source = "./modules/ec2"
  # Add dependencies as needed
  # depends_on = [module.vpc]
}

module "s3" {
  source = "./modules/s3"
}

module "rds" {
  source = "./modules/rds"
  # Add dependencies as needed
  # depends_on = [module.vpc]
}

module "iam" {
  source = "./modules/iam"
}

module "lambda" {
  source = "./modules/lambda"
  # Add dependencies as needed
  # depends_on = [module.iam]
}
