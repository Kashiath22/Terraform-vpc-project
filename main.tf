module "k-vpc" {
  source = "./modules/vpc"
}

module "k-public-subnet" {
  source = "./modules/subnets"
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
}

module "k-public-rt-asso" {
  source ="./modules/route_association"
  k-pub-sub-id = module.k-public-subnet.k-pub-sub-id
  k-pub-rt-id = module.k-route-table.k-pub-rt-id

}

module "k-public-ec2" {
  source = "./modules/ec2"
  k-pub-sub-id = module.k-public-subnet.k-pub-sub-id
  k-pub-sg-id = module.k-security-group.k-pub-sg-id
  k-pub-sg = module.k-security-group.k-pub-sg
}

