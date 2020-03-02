output "vpc_id" {
  value = module.simple_vpc.vpc_id
}

output "vpc_cidr_bloc" {
  value = module.simple_vpc.vpc_cidr_block
}

output "vpc_arn" {
  value = module.simple_vpc.vpc_arn
}

output "private_subnets" {
  value = module.simple_vpc.private_subnets
}

output "private_subnets_cidr_blocks" {
  value = module.simple_vpc.private_subnets_cidr_blocks
}

output "public_subnets" {
  value = module.simple_vpc.public_subnets
}

output "public_subnets_cidr_blocks" {
  value = module.simple_vpc.public_subnets_cidr_blocks
}

output "nat_gateway" {
  value = module.simple_vpc.natgw_ids
}

output "internet_gateway" {
  value = module.simple_vpc.igw_id
}