output "vpc_id" {
  value = aws_default_vpc.default.id
}
output "vpc_cidr" {
  value = aws_default_vpc.default.cidr_block
}
output "public_subnets_ids" {
  value = aws_subnet.public_subnets[*].id
}
output "private_subnets_ids" {
  value = aws_subnet.private_subnets[*].id
}
