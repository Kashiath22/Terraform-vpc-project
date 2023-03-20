resource "aws_route_table" "public-rt" {
  vpc_id = var.kvpcid

  route {
    cidr_block = "${var.k-pub-rt-cidr}"
    gateway_id = var.k-igw-id
  }
}

