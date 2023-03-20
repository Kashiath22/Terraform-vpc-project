resource "aws_route_table" "public-rt" {
  vpc_id = var.kvpcid

  route {
    cidr_block = "${var.k-pub-rt-cidr}"
    gateway_id = var.k-igw-id
  }
}

resource "aws_route_table" "private-rt" {
  vpc_id = var.kvpcid

  route {
    cidr_block = "${var.k-pvt-rt-cidr}"
    nat_gateway_id = var.k-nat-id
  }
}

