resource "aws_subnet" "public" {
  vpc_id                  = var.kvpcid
  cidr_block              = var.k-pub-sub-cidr
  map_public_ip_on_launch = true #this will give instance public ip on launch
  tags = {
    "Name" = "${var.k-pub-sub-tag-name}"
  }
}

# resource "aws_subnet" "private" {
#   vpc_id     = var.kvpcid
#   cidr_block = var.k-pvt-sub-cidr
#   tags = {
#     "Name" = "${var.k-pvt-sub-tag-name}"
#   }
# }
