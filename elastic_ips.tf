resource "aws_eip" "ansible_nat_eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.ansible_igw]
  tags = {
    "Name"     = "ansible_nat_eip",
    "UserName" = "CloudMan"
  }
}

resource "aws_eip" "cloudman_nat_eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.cloudman_igw]
  tags = {
    "Name"     = "cloudman_nat_eip",
    "UserName" = "CloudMan"
  }
}

resource "aws_eip" "unixman_nat_eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.unixman_igw]
  tags = {
    "Name"     = "unixman_nat_eip",
    "UserName" = "CloudMan"
  }
}