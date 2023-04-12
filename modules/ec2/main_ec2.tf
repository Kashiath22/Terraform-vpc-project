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

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo amazon-linux-extras install docker -y",
      "sudo service docker start",
      "sudo usermod -a -G docker ec2-user",
      "sudo docker pull kashinath22/food-order:v1.0",
      "sudo docker run -d -p 3000:3000 --name ec2-food-order-container kashinath22/food-order:v1.0"
    ]
  }

  connection {
    type        = var.k-conn-type
    private_key = file(var.k-key-path)
    user        = var.k-ec2-user
    host        = self.public_ip
  }

}