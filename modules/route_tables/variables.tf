variable "kvpcid" {}

variable "k-pub-rt-cidr"{
    default = "0.0.0.0/0"
}

variable "k-igw-id" {}

variable "k-pvt-rt-cidr" {
  default = "0.0.0.0/0"
}

variable "k-nat-id" {}