resource "aws_eip" "k-eip" {
  vpc = true
  tags = {
    Name = "${var.k-eip-tag-name}"
  }
}

