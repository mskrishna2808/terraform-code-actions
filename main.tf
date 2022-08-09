resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }
}


resource "aws_subnet" "subnet-1" {
  vpc_id            = aws_vpc.main.id
  availability_zone = "us-east-1a"
  cidr_block        = var.subnet_cidr_block
  tags = {
    Name = "test-subnet"
  }
}
