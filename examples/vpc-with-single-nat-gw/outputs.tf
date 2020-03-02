output "vpc_id" {
  value = module.vpc_with_single_nat_gw.vpc_id
}

output "vpc_cidr_bloc" {
  value = module.vpc_with_single_nat_gw.vpc_cidr_block
}

output "vpc_arn" {
  value = module.vpc_with_single_nat_gw.vpc_arn
}

output "private_subnets" {
  value = module.vpc_with_single_nat_gw.private_subnets
}

output "private_subnets_cidr_blocks" {
  value = module.vpc_with_single_nat_gw.private_subnets_cidr_blocks
}

output "public_subnets" {
  value = module.vpc_with_single_nat_gw.public_subnets
}

output "public_subnets_cidr_blocks" {
  value = module.vpc_with_single_nat_gw.public_subnets_cidr_blocks
}

output "nat_gateway" {
  value = module.vpc_with_single_nat_gw.natgw_ids
}

output "internet_gateway" {
  value = module.vpc_with_single_nat_gw.igw_id
}