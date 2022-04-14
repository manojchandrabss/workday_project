resource "aws_vpc" "fake-prod-vpc" {

  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "fake-product-production"
  }
}

resource "aws_vpc" "fake-stage-vpc" {

  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "fake-product-staging"
  }
}


resource "aws_subnet" "prod-subnet" {
  vpc_id     = aws_vpc.fake-prod-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "fake-prod-subnet"
  }
}

resource "aws_subnet" "stag-sunet" {
  vpc_id     = aws_vpc.fake-stage-vpc.id
  cidr_block = "192.168.1.0/24"

  tags = {
    Name = "fake-stage-subnet"
  }
}
