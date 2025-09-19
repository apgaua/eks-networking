output "vpc_id" {
  value       = module.network.ssm_vpc_id
  description = "VPC ID of deployed resources"
}

output "public_subnets" {
  value       = module.network.ssm_public_subnets
  description = "Public Networks IDs"
}

output "private_subnets" {
  value       = module.network.ssm_private_subnets
  description = "Private Networks IDs"
}

output "pod_subnets" {
  value       = module.network.ssm_pod_subnets
  description = "POD Networks IDs"
}

output "database_subnets" {
  value       = module.network.ssm_database_subnets
  description = "Database Networks IDs"
}