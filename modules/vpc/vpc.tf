provider "aws" {
  region = "us-east-1"  # Change to your desired region
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"  # Change to desired availability zone
  map_public_ip_on_launch = true
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}
