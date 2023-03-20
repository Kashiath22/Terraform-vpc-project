output "kvpcid" {
  value = aws_vpc.k-vpc.id
}
output "kcidrblock" {
  value = aws_vpc.k-vpc.cidr_block 
}