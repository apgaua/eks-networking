variable "project_name" {
  type = string
}

variable "region" {
  type = string
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR principal"
}

# variable "cidr_blocks" {
#   type        = string
#   description = "Blocos CIDR"
# }

# variable "availability_zones" {
#   type        = string
#   description = "Zonas de disponibilidade"
# }

variable "vpc_additional_cidrs" {
  type        = list(string)
  description = "CIDRs adicionais"
  default     = [""]
}

variable "public_subnets" {
  description = "Lista de subnets publicas"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}

variable "private_subnets" {
  description = "Lista de subnets privadas"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}

variable "database_subnets" {
  description = "Lista de subnets privadas"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}
