project_name = "EKS-vpc"
region       = "us-east-1"
vpc_cidr     = "10.0.0.0/16"
vpc_additional_cidrs = [
  "100.64.0.0/16"
]

public_subnets = [{
  name              = "eks-public-1a"
  cidr              = "10.0.48.0/24"
  availability_zone = "us-east-1a"
  },
  {
    name              = "eks-public-1b"
    cidr              = "10.0.49.0/24"
    availability_zone = "us-east-1b"
  },
  {
    name              = "eks-public-1c"
    cidr              = "10.0.50.0/24"
    availability_zone = "us-east-1a"
  }
]