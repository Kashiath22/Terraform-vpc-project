variable "ami" {
  default = "ami-006dcf34c09e50022"
}

variable "instance-type" {
 default = "t2.micro" 
}

variable "k-pub-sub-id" {}

variable "k-pub-sg-id" {}

variable "key-name" {
  default = "kashinath-jenkins-project"
}

variable "k-pub-tag-name" {
  default = "kashinath-public-project1-ec2"
}

variable "k-pub-sg" {}

variable "k-conn-type" {
  type = string
  default = "ssh"
}

variable "k-key-path" {
  type = string
  default = "./kashinath-jenkins-project.pem"
}

variable "k-ec2-user" {
  type = string
  default = "ec2-user"
}