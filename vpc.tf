resource "aws_vpc" "ansible_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    "Name" = "ansible_vpc"
  }
}

resource "aws_vpc" "cloudman_vpc" {
  cidr_block           = "128.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    "Name" = "cloudman_vpc"
  }
}

resource "aws_vpc" "unixman_vpc" {
  cidr_block           = "192.168.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    "Name" = "unixman_vpc"
  }
}