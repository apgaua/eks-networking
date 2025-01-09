module "network" {
  source               = "github.com/apgaua/terraform-modules//networking-module/"
  project_name         = var.project_name
  vpc_cidr             = var.vpc_cidr
  vpc_additional_cidrs = var.vpc_additional_cidrs
  region               = var.region
  privatesubnets       = var.privatesubnets
  publicsubnets        = var.publicsubnets
  databasesubnets      = var.databasesubnets
  database_nacl_rules  = var.database_nacl_rules
}