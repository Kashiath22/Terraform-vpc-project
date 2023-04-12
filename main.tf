module "k-vpc" {
  source = "./modules/vpc"
}

module "k-public-subnet" {
  source = "./modules/subnets"
  kvpcid = module.k-vpc.kvpcid
}

module "k-private-subnet" {
  source = "./modules/private_subnet"
  kvpcid = module.k-vpc.kvpcid
}

module "k-security-group" {
  source = "./modules/security_groups"
  kvpcid = module.k-vpc.kvpcid
}

module "k-igw" {
  source = "./modules/internet_gateway"
  kvpcid = module.k-vpc.kvpcid
}

module "k-eip" {
  source = "./modules/elastic_ip"
}

module "k-route-table" {
  source = "./modules/route_tables"
  kvpcid = module.k-vpc.kvpcid
  k-igw-id = module.k-igw.k-igw-id
  k-nat-id = module.k-nat.k-nat-id
}

module "k-public-rt-asso" {
  source ="./modules/route_association"
  k-pub-sub-id = module.k-public-subnet.k-pub-sub-id
  k-pub-rt-id = module.k-route-table.k-pub-rt-id
  k-pvt-sub-id = module.k-private-subnet.k-pvt-sub-id
  k-pvt-rt-id = module.k-route-table.k-pvt-rt-id


}

module "k-public-ec2" {
  source = "./modules/ec2"
  k-pub-sub-id = module.k-public-subnet.k-pub-sub-id
  k-pub-sg-id = module.k-security-group.k-pub-sg-id
  k-pub-sg = module.k-security-group.k-pub-sg
}

module "k-nat" {
  source = "./modules/nat"
  k-pub-sub-id = module.k-public-subnet.k-pub-sub-id
  k-eip = module.k-eip.k-eip
  k-igw-id = module.k-igw.k-igw-id
}
//
