output "vpc_id" {
  value = module.network.vpc_id
}

output "vpc_additional_cidrs" {
  value = module.network.vpc_additional_cidrs
}

output "public_subnets" {
  value       = module.network.public_subnets
  description = "SSM Parameters about public subnets id"
}

output "private_subnets" {
  value       = module.network.private_subnets
  description = "SSM Parameters about private subnets id"
}

output "database_subnets" {
  value       = module.network.database_subnets
  description = "SSM Parameters about database subnets id"
}