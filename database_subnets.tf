# resource "aws_subnet" "database" {
#   count             = length(var.database_subnets)
#   vpc_id            = module.vpc.vpc_id
#   cidr_block        = var.database_subnets[count.index].cidr
#   availability_zone = var.database_subnets[count.index].availability_zone

#   tags = {
#     Name = var.database_subnets[count.index].name
#   }

#   depends_on = [
#     module.vpc.aws_vpc_ipv4_cidr_block_association
#   ]
# }

module "database_subnets" {
  source               = "github.com/apgaua/terraform-modules//subnet-module/"
  vpc_id = module.vpc.vpc_id
  name = "Subnet database"
  cidr_blocks = var.database_subnet_cidr
  availability_zones = var.database_subnet_az
}


resource "aws_network_acl" "database" {
  vpc_id = module.vpc.vpc_id

  egress {
    rule_no    = 200
    protocol   = "-1"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    Name = format("%s-databases", var.project_name)
  }

}

resource "aws_network_acl_rule" "deny" {
  network_acl_id = aws_network_acl.database.id
  rule_number    = "300"
  rule_action    = "deny"

  protocol = "-1"

  cidr_block = "0.0.0.0/0"
  from_port  = 0
  to_port    = 0
}

resource "aws_network_acl_association" "database" {
  count          = length(var.database_subnets)
  network_acl_id = aws_network_acl.database.id
  subnet_id      = aws_subnet.database[count.index].id
}

resource "aws_network_acl_rule" "allow_3306" {
  count          = length(var.private_subnets)
  network_acl_id = aws_network_acl.database.id
  rule_number    = 10 + count.index
  egress         = false
  rule_action    = "allow"

  protocol = "tcp"

  cidr_block = aws_subnet.private[count.index].cidr_block
  from_port  = 3306
  to_port    = 3306
}

resource "aws_network_acl_rule" "allow_6379" {
  count          = length(var.private_subnets)
  network_acl_id = aws_network_acl.database.id
  rule_number    = 20 + count.index
  egress         = false
  rule_action    = "allow"

  protocol = "tcp"

  cidr_block = aws_subnet.private[count.index].cidr_block
  from_port  = 6379
  to_port    = 6379
}