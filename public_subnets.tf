# resource "aws_subnet" "public" {
#   count             = length(var.public_subnets)
#   vpc_id            = module.vpc.vpc_id
#   cidr_block        = var.public_subnets[count.index].cidr
#   availability_zone = var.public_subnets[count.index].availability_zone

#   tags = {
#     Name = var.public_subnets[count.index].name
#   }

#   depends_on = [
#     module.vpc.aws_vpc_ipv4_cidr_block_association
#   ]
# }