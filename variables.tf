variable "project_name" {
  type        = string
  description = "Name of the project, it will be used in the tags and naming of resources"
}
variable "region" {
  type        = string
  description = "The AWS region that the structure will be deployed"
}
variable "vpc_cidr" {
  type        = string
  description = "Main VPC CIDR"
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
  description = "If true, create a single NAT Gateway/Instance in the first AZ. If false, create a NAT Gateway/Instance in each public subnet."
  default     = true
}

variable "nat_gateway_type" {
  type        = string
  description = "Type of NAT Gateway to create: GATEWAY or INSTANCE"
  default     = "INSTANCE"
}

##################################################
############### PRIVATE SUBNET ###################
##################################################

variable "privatesubnets" {
  type        = list(string)
  description = "Networks for private subnets"
}

variable "podsubnets" {
  type        = list(string)
  description = "Networks for POD subnets"
}

##################################################
################ DATABASE SUBNET #################
##################################################

variable "databasesubnets" {
  type        = list(string)
  description = "Networks for database subnets"
}

##################################################
############### DATABASE NACL ####################
##################################################

variable "database_nacl_rules" {
  type        = list(map(string))
  description = "ACL rules to database subnet"
}