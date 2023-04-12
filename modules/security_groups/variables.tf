variable "k-pub-sg-name" {
  default = "kashinath-public-sg"
}

variable "k-desription-pub" {
  default = "This is a public sg for project 1"
}

variable "kvpcid" {}

variable "pub-ing-port" {
  default = 22
}

variable "pub-ing-port-http" {
  default = 80
}
variable "pub-ing-port-https" {
  default = 443
}

variable "pub-ing-port-webapp" {
  default = 3000
}

variable "pub-ing-protocol" {
  default = "tcp"
}

variable "pub-ing-cidr" {
  default = "0.0.0.0/0"
}

variable "pub-egr-port" {
  default = 0
}

variable "pub-egr-protocol" {
  default = "-1"
}

variable "pub-egr-cidr" {
  default = "0.0.0.0/0"
}

###################################################################

variable "k-pvt-sg-name" {
  default = "kashinath-pvt-sg"
}

variable "k-desription-pvt" {
  default = "This is a private sg for project 1"
}
variable "pvt-ing-port" {
  default = 22
}

variable "pvt-ing-protocol" {
  default = "tcp"
}

variable "pvt-ing-cidr" {
  default = "0.0.0.0/0"
}

variable "pvt-egr-port" {
  default = 0
}

variable "pvt-egr-protocol" {
  default = "-1"
}
variable "pvt-egr-cidr" {
  default = "0.0.0.0/0"
}
