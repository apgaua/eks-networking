resource "aws_internet_gateway" "main" {
  vpc_id = module.vpc.vpc_id
  tags = {
    Name = var.project_name
  }
}