resource "aws_route_table_association" "public-rt-asso" {
  subnet_id      = var.k-pub-sub-id
  route_table_id = var.k-pub-rt-id
}

resource "aws_route_table_association" "private-rt-asso" {

  subnet_id      = var.k-pvt-sub-id
  route_table_id = var.k-pvt-rt-id

}
