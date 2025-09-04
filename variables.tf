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

variable "singlenat" {
  type        = bool
  description = "If true, create a single NAT Gateway in the first AZ. If false, create a NAT Gateway in each public subnet."
  default     = true
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
  type        = list(map(string))
  description = "ACL rule to database subnet"
}