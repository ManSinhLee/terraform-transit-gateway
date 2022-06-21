resource "aws_subnet" "ansible_public_subnet" {
  vpc_id                  = aws_vpc.ansible_vpc.id
  map_public_ip_on_launch = true
  count                   = length(data.aws_availability_zones.available.names)
  cidr_block              = "10.0.${count.index}.0/24"
  availability_zone       = element(data.aws_availability_zones.available.names, count.index)
  tags = {
    "Name" = "ansible_public_subnet_${element(data.aws_availability_zones.available.names, count.index)}"
  }
}

resource "aws_subnet" "ansible_private_subnet" {
  vpc_id                  = aws_vpc.ansible_vpc.id
  map_public_ip_on_launch = false
  count                   = length(data.aws_availability_zones.available.names)
  cidr_block              = "10.0.${length(data.aws_availability_zones.available.names) + count.index}.0/24"
  availability_zone       = element(data.aws_availability_zones.available.names, count.index)
  tags = {
    Name = "ansible_private_subnet_${element(data.aws_availability_zones.available.names, count.index)}"
  }
}

resource "aws_subnet" "ansible_database_subnet" {
  vpc_id                  = aws_vpc.ansible_vpc.id
  map_public_ip_on_launch = false
  cidr_block              = "10.0.${2 * length(data.aws_availability_zones.available.names) + count.index}.0/24"
  count                   = length(data.aws_availability_zones.available.names)
  availability_zone       = element(data.aws_availability_zones.available.names, count.index)
  tags = {
    Name = "ansible_database_subnet_${element(data.aws_availability_zones.available.names, count.index)}"
  }
}


resource "aws_subnet" "cloudman_public_subnet" {
  vpc_id                  = aws_vpc.cloudman_vpc.id
  map_public_ip_on_launch = true
  count                   = length(data.aws_availability_zones.available.names)
  cidr_block              = "128.0.${count.index}.0/24"
  availability_zone       = element(data.aws_availability_zones.available.names, count.index)
  tags = {
    "Name" = "cloudman_public_subnet_${element(data.aws_availability_zones.available.names, count.index)}"
  }
}

resource "aws_subnet" "cloudman_private_subnet" {
  vpc_id                  = aws_vpc.cloudman_vpc.id
  map_public_ip_on_launch = false
  count                   = length(data.aws_availability_zones.available.names)
  cidr_block              = "128.0.${length(data.aws_availability_zones.available.names) + count.index}.0/24"
  availability_zone       = element(data.aws_availability_zones.available.names, count.index)
  tags = {
    Name = "cloudman_private_subnet_${element(data.aws_availability_zones.available.names, count.index)}"
  }
}

resource "aws_subnet" "cloudman_database_subnet" {
  vpc_id                  = aws_vpc.cloudman_vpc.id
  map_public_ip_on_launch = false
  cidr_block              = "128.0.${2 * length(data.aws_availability_zones.available.names) + count.index}.0/24"
  count                   = length(data.aws_availability_zones.available.names)
  availability_zone       = element(data.aws_availability_zones.available.names, count.index)
  tags = {
    Name = "cloudman_database_subnet_${element(data.aws_availability_zones.available.names, count.index)}"
  }
}


resource "aws_subnet" "unixman_public_subnet" {
  vpc_id                  = aws_vpc.unixman_vpc.id
  map_public_ip_on_launch = true
  count                   = length(data.aws_availability_zones.available.names)
  cidr_block              = "192.168.${count.index}.0/24"
  availability_zone       = element(data.aws_availability_zones.available.names, count.index)
  tags = {
    "Name" = "unixman_public_subnet_${element(data.aws_availability_zones.available.names, count.index)}"
  }
}

resource "aws_subnet" "unixman_private_subnet" {
  vpc_id                  = aws_vpc.unixman_vpc.id
  map_public_ip_on_launch = false
  count                   = length(data.aws_availability_zones.available.names)
  cidr_block              = "192.168.${length(data.aws_availability_zones.available.names) + count.index}.0/24"
  availability_zone       = element(data.aws_availability_zones.available.names, count.index)
  tags = {
    Name = "unixman_private_subnet_${element(data.aws_availability_zones.available.names, count.index)}"
  }
}

resource "aws_subnet" "unixman_database_subnet" {
  vpc_id                  = aws_vpc.unixman_vpc.id
  map_public_ip_on_launch = false
  cidr_block              = "192.168.${2 * length(data.aws_availability_zones.available.names) + count.index}.0/24"
  count                   = length(data.aws_availability_zones.available.names)
  availability_zone       = element(data.aws_availability_zones.available.names, count.index)
  tags = {
    Name = "unixman_database_subnet_${element(data.aws_availability_zones.available.names, count.index)}"
  }
}
