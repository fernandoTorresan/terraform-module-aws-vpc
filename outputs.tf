output "vpc_id" {
  value       = aws_vpc.this.id
  description = "ID da VPC."
}

output "vpc_cidr" {
  value       = aws_vpc.this.cidr_block
  description = "VPC CIDR."
}