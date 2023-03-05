provider "aws" {
    region= "eu-west-3"
}

resource "aws_vpc" "development-vpc" {
    cidr_block = "10.0.0.0/16" # private ip adresses range
}

resource "aws_subnet" "dev-subnet-1" {
    vpc_id = aws_vpc.development-vpc.id
    cidr_block = "10.0.10.0/24"
    availability_zone = "eu-west-3a"
}