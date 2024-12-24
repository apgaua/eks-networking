variable "project_name" {
    type = string
}

variable "region" {
    type = string
}

variable "vpc_cidr" {
    type = string
    description = "CIDR principal"
}

variable "vpc_additional_cidrs" {
    type = string
    description = "Lista de CIDRs adicionais"
    default = []
}