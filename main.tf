module "naming" {
  source      = "git::https://github.com/MagnetarIT/terraform-naming-standard.git?ref=tags/0.2.0"
  namespace   = var.namespace
  environment = var.environment
  name        = var.name
  tags        = var.tags
}

resource "aws_vpc" "default" {
  cidr_block                       = var.cidr_block
  instance_tenancy                 = var.instance_tenancy
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_dns_support               = var.enable_dns_support
  enable_classiclink               = var.enable_classiclink
  enable_classiclink_dns_support   = var.enable_classiclink_dns_support
  assign_generated_ipv6_cidr_block = true
  tags                             = module.naming.tags
}

resource "aws_internet_gateway" "default" {
  count  = var.create_aws_internet_gateway ? 1 : 0
  vpc_id = aws_vpc.default.id
  tags   = module.naming.tags
}

# If `aws_default_security_group` is not defined, it would be created implicitly with access `0.0.0.0/0`
resource "aws_default_security_group" "default" {
  count  = var.enable_default_security_group_with_custom_rules ? 1 : 0
  vpc_id = aws_vpc.default.id

  tags = {
    Name = "Default Security Group"
  }
}