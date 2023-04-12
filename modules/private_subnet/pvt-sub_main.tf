resource "aws_subnet" "private" {
  vpc_id     = var.kvpcid
  cidr_block = var.k-pvt-sub-cidr
  tags = {
    "Name" = "${var.k-pvt-sub-tag-name}"
  }
}