project_name         = "EKS"
region               = "us-east-1"
vpc_cidr             = "10.0.0.0/16"
vpc_additional_cidrs = ["100.64.0.0/16"] # Attention to IPv4 CIDR block association restrictions: https://docs.aws.amazon.com/vpc/latest/userguide/vpc-cidr-blocks.html

default_tags = {
  Contato = "apgaua@pm.me"
  Curso   = "Arquitetura de Containers - EKS"
  Dia     = "Dia18-Networking"
  Repo    = "https://github.com/apgaua/eks-networking"
}

################### PUBLIC ##############
publicsubnets    = ["10.0.48.0/24", "10.0.49.0/24", "10.0.50.0/24"]
singlenat        = true       # true = 1 AZ, false = Multi-AZ | Default: true
nat_gateway_type = "INSTANCE" # GATEWAY or INSTANCE | Default: INSTANCE

############### PRIVATE AND PODS ########
privatesubnets = ["10.0.0.0/20", "10.0.16.0/20", "10.0.32.0/20"]
podsubnets     = ["100.64.0.0/18", "100.64.64.0/18", "100.64.128.0/18"]

################### DATABASE ###############
databasesubnets = ["10.0.51.0/24", "10.0.52.0/24", "10.0.53.0/24"]

database_nacl_rules = [
  {
    rule_start_number = "10"
    rule_action       = "allow"
    protocol          = "tcp"
    from_port         = "3306"
    to_port           = "3306"
  },
  {
    rule_start_number = "20"
    rule_action       = "allow"
    protocol          = "tcp"
    from_port         = "6379"
    to_port           = "6379"
  }
]