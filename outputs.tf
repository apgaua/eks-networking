output "vpc_id" {
  value = module.network.ssm_vpc_id
}

output "public_subnets" {
  value       = module.network.ssm_public_subnets
  description = "SSM Parameters about public subnets id"
}

output "private_subnets" {
  value       = module.network.ssm_private_subnets
  description = "SSM Parameters about private subnets id"
}

output "pod_subnets" {
  value       = module.network.ssm_pod_subnets
  description = "SSM Parameters about POD subnets id"
}

output "database_subnets" {
  value       = module.network.ssm_database_subnets
  description = "SSM Parameters about database subnets id"
}