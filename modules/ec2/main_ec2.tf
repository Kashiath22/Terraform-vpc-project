resource "aws_instance" "k-pub-ec2" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance-type}"
  subnet_id              = var.k-pub-sub-id
  vpc_security_group_ids = [var.k-pub-sg-id]
  key_name               = "${var.key-name}"
  tags = {
    "Name" = "${var.k-pub-tag-name}"
  }

  depends_on = [var.k-pub-sg]

#   provisioner "remote-exec" {
#     inline = [
#       "sudo yum update -y",
#       "sudo yum install -y awscli",
#       "aws configure set default.region us-east"
#     ]
#   }

#   connection {
#     type        = "ssh"
#     private_key = file("./kashinath-us-west-1.pem")
#     user        = "ec2-user"
#     host        = self.public_ip
#   }

}