provider "aws" {
  region = "eu-west-2"
}

module "vpc" {
  source = "git::https://github.com/MagnetarIT/terraform-aws-vpc.git?ref=tags/0.1.0"
  cidr_block = "10.0.0.0/16"
  namespace = "mag"
  environment = "prod"
  name = "vpc"
} 