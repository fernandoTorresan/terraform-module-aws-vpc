provider "aws" {
  region = "us-east-2"
}

module "vpc_with_one_nat_per_az" {
  source = "../../"

  name       = "vpc-one-nat-per-az"
  cidr_block = "20.0.0.0/16"

  one_nat_gateway_per_az = true

  azs             = ["us-east-2a", "us-east-2b", "us-east-2c"]
  private_subnets = ["20.0.1.0/24", "20.0.2.0/24", "20.0.3.0/24"]
  public_subnets  = ["20.0.101.0/24", "20.0.102.0/24", "20.0.103.0/24"]

  tags = {
    ManagedBy = "Terraform"
  }
}