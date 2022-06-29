output "vpc_id" {
  value = aws_default_vpc.main.id
}
output "vpc_cidr" {
  value = aws_default_vpc.main.cidr_block
}
output "public_subnets_ids" {
  value = aws_subnet.public_subnets[*].id
}
output "private_subnets_ids" {
  value = aws_subnet.private_subnets[*].id
}
output "subnets_id" {
  value = aws_subnet.public_subnets.availability_zone_id
