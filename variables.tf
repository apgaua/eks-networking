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