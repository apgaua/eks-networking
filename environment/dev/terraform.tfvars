project_name = "EKS-vpc"
region       = "us-east-1"
vpc_cidr     = "10.0.0.0/16"
vpc_additional_cidrs = ["100.64.0.0/16"]

################### PUBLIC ##############
publicsubnets = [{
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
    availability_zone = "us-east-1c"
  }
]

##################### PRIVATE #############
privatesubnets = [{
  name              = "eks-private-1a"
  cidr              = "10.0.0.0/20"
  availability_zone = "us-east-1a"
  },
  {
    name              = "eks-private-1b"
    cidr              = "10.0.16.0/20"
    availability_zone = "us-east-1b"
  },
  {
    name              = "eks-private-1c"
    cidr              = "10.0.32.0/20"
    availability_zone = "us-east-1c"
  },

  ################### PODS #################
  {
    name              = "eks-pods-1a"
    cidr              = "100.64.0.0/18"
    availability_zone = "us-east-1a"
  },
  {
    name              = "eks-pods-1b"
    cidr              = "100.64.64.0/18"
    availability_zone = "us-east-1b"
  },
  {
    name              = "eks-pods-1c"
    cidr              = "100.64.128.0/18"
    availability_zone = "us-east-1c"
  }
]

################### DATABASE ###############
databasesubnets = [{
  name              = "eks-database-1a"
  cidr              = "10.0.51.0/24"
  availability_zone = "us-east-1a"
  },
  {
    name              = "eks-database-1b"
    cidr              = "10.0.52.0/24"
    availability_zone = "us-east-1b"
  },
  {
    name              = "eks-database-1c"
    cidr              = "10.0.53.0/24"
    availability_zone = "us-east-1c"
  }
]

database_nacl_rules = [
  {
    rule_start_number = 10
    rule_action       = "allow"
    protocol          = "tcp"
    from_port         = 3306
    to_port           = 3306
  },
  {
    rule_start_number = 20
    rule_action       = "allow"
    protocol          = "tcp"
    from_port         = 6379
    to_port           = 6379
  }
]