#creating internet gate
resource "aws_internet_gateway" "k-igw" {
  vpc_id = var.kvpcid
  tags = {
    "Name" = "${var.k-igw-name}"
  }
}