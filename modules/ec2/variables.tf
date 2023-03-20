variable "ami" {
  default = "ami-0925fd223898ee5ba"
}

variable "instance-type" {
 default = "t2.micro" 
}

variable "k-pub-sub-id" {}

variable "k-pub-sg-id" {}

variable "key-name" {
  default = "kashinath-us-west-1"
}

variable "k-pub-tag-name" {
  default = "kashinath-public-project1-ec2"
}

variable "k-pub-sg" {}
