output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = aws_ssm_parameter.public_subnets[*].id
}

output "private_subnets" {
  value = aws_ssm_parameter.private_subnets[*].id
}

output "database_subnets" {
  value = aws_ssm_parameter.database_subnets[*].id
}
