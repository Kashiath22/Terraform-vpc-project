
resource "aws_nat_gateway" "k-nat" {
  allocation_id = var.k-eip
  subnet_id     = var.k-pub-sub-id
  depends_on    = [var.k-eip, var.k-igw-id]
  tags = {
    "Name" = "${var.k-nat-tag-name}"
  }
}