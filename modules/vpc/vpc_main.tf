resource "aws_vpc" "k-vpc" {
  cidr_block = var.cidr

  tags = {
    "Name" = "${var.vpc-name}"
  }
}