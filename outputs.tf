# ----------------------------------------------------------------------------------------------------------------------
# VPC
# ----------------------------------------------------------------------------------------------------------------------

output "vpc_id" {
  value       = aws_vpc.this.id
  description = "O ID da VPC."
}

output "vpc_arn" {
  value       = aws_vpc.this.arn
  description = "O ARN da VPC."
}

output "vpc_cidr_block" {
  value       = aws_vpc.this.cidr_block
  description = "O bloco CIDR da VPC."
}

output "default_security_group_id" {
  value       = aws_vpc.this.default_security_group_id
  description = "O ID do security group criado por padrão no momento da criação da VPC."
}

output "default_network_acl_id" {
  value       = aws_vpc.this.default_network_acl_id
  description = "O ID do network ACL padrão."
}

output "default_route_table_id" {
  value       = aws_vpc.this.default_route_table_id
  description = "O ID da tabela de rotas padrão."
}

# ----------------------------------------------------------------------------------------------------------------------
# Subnets
# ----------------------------------------------------------------------------------------------------------------------

output "private_subnets" {
  value       = aws_subnet.private.*.id
  description = "Lista dos IDs das subnets privadas."
}

output "private_subnets_arn" {
  value       = aws_subnet.private.*.arn
  description = "Lista dos ARNs das subnets privadas."
}

output "private_subnets_cidr_blocks" {
  value       = aws_subnet.private.*.cidr_block
  description = "Lista dos blocos CIDR das subnets privadas."
}

output "public_subnets" {
  value       = aws_subnet.public.*.id
  description = "Lista dos IDs das subnets públicas."
}

output "public_subnet_arns" {
  value       = aws_subnet.public.*.arn
  description = "Lista dos ARNs das subnets públicas."
}

output "public_subnets_cidr_blocks" {
  value       = aws_subnet.public.*.cidr_block
  description = "Lista dos blocos CIDR das subnets públicas."
}

# ----------------------------------------------------------------------------------------------------------------------
# Route tables
# ----------------------------------------------------------------------------------------------------------------------

output "public_route_table_ids" {
  value       = aws_route_table.public.*.id
  description = "Lista dos IDs das tabelas de rotas públicas."
}

output "private_route_table_ids" {
  value       = aws_route_table.private.*.id
  description = "Lista dos IDs das tabelas de rotas privadas."
}

# ----------------------------------------------------------------------------------------------------------------------
# NAT Gateway / Internet Gateway
# ----------------------------------------------------------------------------------------------------------------------

output "eip_ids_nat" {
  value       = aws_eip.nat.*.id
  description = "Lista de IDs dos Elastic IPs criados para os NAT Gateways."
}

output "eip_nat_public_ips" {
  value       = aws_eip.nat.*.public_ip
  description = "Lista dos Elastic IPs criados para os NAT Gateways."
}

output "natgw_ids" {
  value       = aws_nat_gateway.this.*.id
  description = "Lista dos IDs dos NAT Gateways."
}

output "igw_id" {
  value       = concat(aws_internet_gateway.this.*.id, [""])[0]
  description = "O ID do Internet Gateway."
}