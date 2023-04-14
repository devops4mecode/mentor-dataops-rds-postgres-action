resource "aws_vpc" "rdsvpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.rdsvpc.id
}

resource "aws_subnet" "db1" {
  vpc_id                  = aws_vpc.rdsvpc.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "ap-southeast-1a"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "db2" {
  vpc_id                  = aws_vpc.rdsvpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-southeast-1b"
  map_public_ip_on_launch = true
}

resource "aws_route_table_association" "rtadb1" {
  subnet_id      = aws_subnet.db1.id
  route_table_id = aws_vpc.rdsvpc.default_route_table_id
}

resource "aws_route_table_association" "rtadb2" {
  subnet_id      = aws_subnet.db2.id
  route_table_id = aws_vpc.rdsvpc.default_route_table_id
}

resource "aws_security_group" "pgsecgrp" {
  name        = "pgsecgrp"
  description = "Allow inbound traffic for PG"
  vpc_id      = aws_vpc.rdsvpc.id

  ingress {
    description      = "PG Public Connection"
    from_port        = 5432
    to_port          = 5432
    protocol         = "tcp"
    # cidr_blocks      = [aws_vpc.rdsvpc.cidr_block]
    # ipv6_cidr_blocks = [aws_vpc.rdsvpc.ipv6_cidr_block]
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}