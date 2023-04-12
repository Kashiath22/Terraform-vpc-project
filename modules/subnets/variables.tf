variable "kvpcid" {}

variable "k-pub-sub-cidr" {
    default = "10.0.1.0/24"
}

variable "k-pvt-sub-cidr" {
  default = "10.0.2.0/24"
}

variable "k-pub-sub-tag-name" {
  default ="kashinath-public-subnet"
}

variable "k-pvt-sub-tag-name" {
  default ="kashinath-private-subnet"
}