module "network" {
  source               = "github.com/apgaua/terraform-modules//networking-module"
  project_name         = var.project_name
  vpc_cidr             = var.vpc_cidr
  vpc_additional_cidrs = var.vpc_additional_cidrs # Attention to IPv4 CIDR block association restrictions: https://docs.aws.amazon.com/vpc/latest/userguide/vpc-cidr-blocks.html
  default_tags         = var.default_tags
  region               = var.region
  singlenat            = var.singlenat
  privatesubnets       = var.privatesubnets
  publicsubnets        = var.publicsubnets
  podsubnets           = var.podsubnets
  databasesubnets      = var.databasesubnets
  database_nacl_rules  = var.database_nacl_rules
}
