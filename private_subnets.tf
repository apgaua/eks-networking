resource "aws_subnet" "private" {
  count             = length(var.private_subnets)
  vpc_id            = module.vpc.vpc_id
  cidr_block        = var.private_subnets[count.index].cidr
  availability_zone = var.private_subnets[count.index].availability_zone

  tags = {
    Name = var.private_subnets[count.index].name
  }

  depends_on = [
    module.vpc.aws_vpc_ipv4_cidr_block_association
  ]
}

resource "aws_route_table" "private" {
  count  = length(var.private_subnets)
  vpc_id = module.vpc.vpc_id
  tags = {
    Name = format("%s-%s", var.project_name, var.private_subnets[count.index].name)
  }
}

resource "aws_route" "private" {
  count = length(var.private_subnets)

  route_table_id         = aws_route_table.private[count.index].id
  destination_cidr_block = "0.0.0.0/0"

  gateway_id = aws_nat_gateway.main[
    index(
      var.public_subnets[*].availability_zone,
      var.private_subnets[count.index].availability_zone
    )
  ].id
}

resource "aws_route_table_association" "private" {
  count = length(var.private_subnets)

  subnet_id      = aws_subnet.private[count.index].id
  route_table_id = aws_route_table.private[count.index].id
}