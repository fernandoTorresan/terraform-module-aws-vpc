output "vpc_id" {
  value = module.vpc_with_one_nat_per_az.vpc_id
}

output "vpc_cidr_bloc" {
  value = module.vpc_with_one_nat_per_az.vpc_cidr_block
}

output "vpc_arn" {
  value = module.vpc_with_one_nat_per_az.vpc_arn
}

output "private_subnets" {
  value = module.vpc_with_one_nat_per_az.private_subnets
}

output "private_subnets_cidr_blocks" {
  value = module.vpc_with_one_nat_per_az.private_subnets_cidr_blocks
}

output "public_subnets" {
  value = module.vpc_with_one_nat_per_az.public_subnets
}

output "public_subnets_cidr_blocks" {
  value = module.vpc_with_one_nat_per_az.public_subnets_cidr_blocks
}

output "nat_gateway" {
  value = module.vpc_with_one_nat_per_az.natgw_ids
}

output "internet_gateway" {
  value = module.vpc_with_one_nat_per_az.igw_id
}