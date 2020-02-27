provider "aws" {
  region = "us-east-1"
}

module "simple_vpc" {
  source = "../../"

  name       = "simple-vpc"
  cidr_block = "20.0.0.0/16"

  single_nat_gateway = true

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["20.0.1.0/24", "20.0.2.0/24", "20.0.3.0/24"]
  public_subnets  = ["20.0.101.0/24", "20.102.0/24", "20.0.103.0/24"]

  tags = {
    "ManagedBy" = Terraform
  }
}