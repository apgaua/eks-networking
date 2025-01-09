variable "project_name" {
  type = string
}
variable "region" {
  type = string
}
variable "vpc_cidr" {
  type = string
}
variable "vpc_additional_cidrs" {
  type        = list(string)
  description = "Additional VPC CIDRs"
  default = [ ]
}

##################################################
############### PUBLIC SUBNET ####################
##################################################

variable "publicsubnets" {
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
  description = "Public subnet values"
}

##################################################
############### PRIVATE SUBNET ###################
##################################################

variable "privatesubnets" {
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
  description = "Private subnet values"
}

##################################################
################ DATABASE SUBNET #################
##################################################

variable "databasesubnets" {
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
  description = "Database subnet values"
}

##################################################
############### DATABASE NACL ####################
##################################################

variable "database_nacl_rules" {
  type = list(object({
    rule_start_number = number
    rule_action       = string
    protocol          = string
    from_port         = optional(number)
    to_port           = optional(number)
  }))
  description = "ACL rule to database subnet"
}