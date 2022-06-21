resource "aws_nat_gateway" "ansible_nat_gateway" {
  allocation_id = aws_eip.ansible_nat_eip.id
  subnet_id     = aws_subnet.ansible_public_subnet[0].id
  depends_on    = [aws_internet_gateway.ansible_igw]
  tags = {
    "Name"     = "ansible_nat_gateway",
    "UserName" = "CloudMan"
  }
}

resource "aws_nat_gateway" "cloudman_nat_gateway" {
  allocation_id = aws_eip.cloudman_nat_eip.id
  subnet_id     = aws_subnet.cloudman_public_subnet[0].id
  depends_on    = [aws_internet_gateway.cloudman_igw]
  tags = {
    "Name"     = "cloudman_nat_gateway",
    "UserName" = "CloudMan"
  }
}

resource "aws_nat_gateway" "unixman_nat_gateway" {
  allocation_id = aws_eip.unixman_nat_eip.id
  subnet_id     = aws_subnet.unixman_public_subnet[0].id
  depends_on    = [aws_internet_gateway.unixman_igw]
  tags = {
    "Name"     = "unixman_nat_gateway",
    "UserName" = "CloudMan"
  }
}