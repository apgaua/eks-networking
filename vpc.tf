module "vpc" {
#  source               = "github.com/apgaua/terraform-modules//vpc-module/"
  source               = "../../terraform-modules/vpc-module"
  vpc_cidr             = var.vpc_cidr
  project_name         = var.project_name
  vpc_additional_cidrs = var.vpc_additional_cidrs
}

resource "aws_route_table" "public_internet_access" {
  vpc_id = module.vpc.vpc_id

  tags = {
    Name = "$(var.project_name)-public-access"
  }
}

resource "aws_route" "public" {
  route_table_id         = aws_route_table.public_internet_access.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.main.id
}

resource "aws_route_table_association" "public" {
  count          = length(var.public_subnets)
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public_internet_access.id

}
