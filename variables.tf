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
}

variable "default_tags" {
  type        = map(string)
  description = "Default tags to be set in resources"
}

##################################################
############### PUBLIC SUBNET ####################
##################################################

variable "publicsubnets" {
  type        = list(string)
  description = "Public subnet values"
}

##################################################
############### PRIVATE SUBNET ###################
##################################################

variable "privatesubnets" {
  type        = list(string)
  description = "Private subnet values"
}

variable "podsubnets" {
  type        = list(string)
  description = "POD subnet values"
}

##################################################
################ DATABASE SUBNET #################
##################################################

variable "databasesubnets" {
  type        = list(string)
  description = "Database subnet values"
}

##################################################
############### DATABASE NACL ####################
##################################################

variable "database_nacl_rules" {
  # type = list(object({
  #   rule_start_number = number
  #   rule_action       = string
  #   protocol          = string
  #   from_port         = optional(number)
  #   to_port           = optional(number)
  # }))
  type        = list(map(string))
  description = "ACL rule to database subnet"
}