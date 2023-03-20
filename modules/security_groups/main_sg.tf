resource "aws_security_group" "k-public-sg" {
  name        = "${var.k-pub-sg-name}"
  description = "${var.k-desription-pub}"
  vpc_id      = var.kvpcid


  ingress {
    to_port     = var.pub-ing-port
    from_port   = var.pub-ing-port
    protocol    = "${var.pub-ing-protocol}"
    cidr_blocks = [var.pub-ing-cidr]
  }
  egress {
    to_port     = var.pub-egr-port
    from_port   = var.pub-egr-port
    protocol    = "${var.pub-egr-protocol}"
    cidr_blocks = [var.pub-egr-cidr]
  }
}

resource "aws_security_group" "k-private-sg" {
  name        = "${var.k-pvt-sg-name}"
  description = "${var.k-desription-pvt}"
  vpc_id = var.kvpcid

  ingress {

    to_port     = var.pvt-ing-port
    from_port   = var.pvt-ing-port
    protocol    = "${var.pvt-ing-protocol}"
    cidr_blocks = [var.pvt-ing-cidr]
  }
  egress {

    to_port     = var.pvt-egr-port
    from_port   = var.pvt-egr-port
    protocol    =  "${var.pvt-egr-protocol}"
    cidr_blocks = [var.pvt-egr-cidr]
  }
}
