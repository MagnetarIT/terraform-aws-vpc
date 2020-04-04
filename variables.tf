variable "namespace" {
  description = "Namespace (e.g. `cp` or `cloudposse`)"
  type        = string
  default     = ""
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment, e.g. 'prod', 'staging', 'dev', 'pre-prod', 'UAT'"
}

variable "name" {
  description = "Name  (e.g. `app` or `cluster`)"
  type        = string
}

variable "cidr_block" {
  type        = string
  description = "CIDR for the VPC"
}

variable "instance_tenancy" {
  type        = string
  description = "A tenancy option for instances launched into the VPC"
  default     = "default"
}

variable "enable_dns_hostnames" {
  type        = bool
  description = "A boolean flag to enable/disable DNS hostnames in the VPC"
  default     = true
}

variable "enable_dns_support" {
  type        = bool
  description = "A boolean flag to enable/disable DNS support in the VPC"
  default     = true
}

variable "enable_classiclink" {
  type        = bool
  description = "A boolean flag to enable/disable ClassicLink for the VPC"
  default     = false
}

variable "enable_classiclink_dns_support" {
  type        = bool
  description = "A boolean flag to enable/disable ClassicLink DNS Support for the VPC"
  default     = false
}

variable "enable_default_security_group_with_custom_rules" {
  type        = bool
  description = "A boolean flag to enable/disable custom and restricive inbound/outbound rules for the default VPC's SG"
  default     = true
}

variable "create_aws_internet_gateway" {
  type        = bool
  description = "A boolean flag to create an Internet Gateway for the VPC"
  default     = false
}
