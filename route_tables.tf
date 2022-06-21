resource "aws_route_table" "ansible_public_rtb" {
  vpc_id = aws_vpc.ansible_vpc.id
  tags = {
    "Name" = "ansible_public_rtb"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ansible_igw.id
  }
  route {
    cidr_block         = "128.0.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
  route {
    cidr_block         = "192.168.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
}

resource "aws_route_table" "ansible_private_rtb" {
  vpc_id = aws_vpc.ansible_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ansible_nat_gateway.id
  }
  route {
    cidr_block         = "128.0.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
  route {
    cidr_block         = "192.168.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
  tags = {
    "Name" = "ansible_private_rtb"
  }
}

resource "aws_route_table" "ansible_database_rtb" {
  vpc_id = aws_vpc.ansible_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ansible_nat_gateway.id
  }
  route {
    cidr_block         = "128.0.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
  route {
    cidr_block         = "192.168.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
  tags = {
    "Name" = "ansible_database_rtb"
  }
}

resource "aws_route_table" "cloudman_public_rtb" {
  vpc_id = aws_vpc.cloudman_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.cloudman_igw.id
  }
  route {
    cidr_block         = "10.0.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
  route {
    cidr_block         = "192.168.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
  tags = {
    "Name" = "cloudman_public_rtb"
  }
}

resource "aws_route_table" "cloudman_private_rtb" {
  vpc_id = aws_vpc.cloudman_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.cloudman_nat_gateway.id
  }
  route {
    cidr_block         = "10.0.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
  route {
    cidr_block         = "192.168.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
  tags = {
    "Name" = "cloudman_private_rtb"
  }
}

resource "aws_route_table" "cloudman_database_rtb" {
  vpc_id = aws_vpc.cloudman_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.cloudman_nat_gateway.id
  }
  route {
    cidr_block         = "10.0.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
  route {
    cidr_block         = "192.168.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
  tags = {
    "Name" = "cloudman_database_rtb"
  }
}

resource "aws_route_table" "unixman_public_rtb" {
  vpc_id = aws_vpc.unixman_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.unixman_igw.id
  }
  route {
    cidr_block         = "10.0.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
  route {
    cidr_block         = "128.0.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
  tags = {
    "Name" = "unixman_public_rtb"
  }
}

resource "aws_route_table" "unixman_private_rtb" {
  vpc_id = aws_vpc.unixman_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.unixman_nat_gateway.id
  }
  route {
    cidr_block         = "10.0.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
  route {
    cidr_block         = "128.0.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
  tags = {
    "Name" = "unixman_private_rtb"
  }
}

resource "aws_route_table" "unixman_database_rtb" {
  vpc_id = aws_vpc.unixman_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.unixman_nat_gateway.id
  }
  route {
    cidr_block         = "10.0.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
  route {
    cidr_block         = "128.0.0.0/16"
    transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  }
  tags = {
    "Name" = "unixman_database_rtb"
  }
}