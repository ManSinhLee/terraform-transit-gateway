resource "aws_internet_gateway" "ansible_igw" {
  vpc_id = aws_vpc.ansible_vpc.id
  tags = {
    "Name" = "ansible_igw"
  }
}

resource "aws_internet_gateway" "cloudman_igw" {
  vpc_id = aws_vpc.cloudman_vpc.id
  tags = {
    "Name" = "cloudman_igw"
  }
}

resource "aws_internet_gateway" "unixman_igw" {
  vpc_id = aws_vpc.unixman_vpc.id
  tags = {
    "Name" = "unixman_igw"
  }
}