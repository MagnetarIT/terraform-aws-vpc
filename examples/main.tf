provider "aws" {
  region = "eu-west-2"
}

module "vpc" {
  source                                  = "../"
  cidr_block                              = "10.250.0.0/16"
  namespace                               = "mag"
  environment                             = "test"
  name                                    = "vpc"
  create_aws_internet_gateway             = true
} 