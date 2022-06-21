resource "aws_network_acl" "ansible_public_nacl" {
  vpc_id     = aws_vpc.ansible_vpc.id
  subnet_ids = aws_subnet.ansible_public_subnet.*.id
  ingress {
    rule_no    = 100
    action     = "allow"
    protocol   = "tcp"
    cidr_block = var.my_address
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 101
    action     = "allow"
    protocol   = "tcp"
    cidr_block = var.office_address
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 102
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "10.0.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 103
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "128.0.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 104
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "192.168.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 110
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }
  ingress {
    rule_no    = 120
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }
  ingress {
    rule_no    = 130
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "10.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 140
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "128.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 150
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "192.168.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 300
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }
  egress {
    rule_no    = 100
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 22
    to_port    = 22
  }
  egress {
    rule_no    = 110
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }
  egress {
    rule_no    = 120
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }
  egress {
    rule_no    = 130
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "10.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  egress {
    rule_no    = 140
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "128.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  egress {
    rule_no    = 150
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "192.168.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  egress {
    rule_no    = 300
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }
  tags = {
    "Name" = "ansible_public_nacl"
  }
}

resource "aws_network_acl" "ansible_private_nacl" {
  vpc_id     = aws_vpc.ansible_vpc.id
  subnet_ids = aws_subnet.ansible_private_subnet.*.id
  ingress {
    rule_no    = 100
    action     = "allow"
    protocol   = "tcp"
    cidr_block = var.my_address
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 101
    action     = "allow"
    protocol   = "tcp"
    cidr_block = var.office_address
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 102
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "10.0.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 103
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "128.0.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 104
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "192.168.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 110
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }
  ingress {
    rule_no    = 120
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }
  ingress {
    rule_no    = 130
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "10.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 140
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "128.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 150
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "192.168.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 300
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }

  egress {
    rule_no    = 100
    action     = "allow"
    protocol   = "all"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
  tags = {
    "Name" = "ansible_private_nacl"
  }
}

resource "aws_network_acl" "ansible_database_nacl" {
  vpc_id     = aws_vpc.ansible_vpc.id
  subnet_ids = aws_subnet.ansible_database_subnet.*.id
  ingress {
    rule_no    = 100
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "10.0.0.0/16"
    from_port  = 3306
    to_port    = 3306
  }
  ingress {
    rule_no    = 110
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "10.0.0.0/16"
    from_port  = 5432
    to_port    = 5432
  }
  ingress {
    rule_no    = 300
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }

  egress {
    rule_no    = 100
    action     = "allow"
    protocol   = "all"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    "Name" = "ansible_database_nacl"
  }
}


resource "aws_network_acl" "cloudman_public_nacl" {
  vpc_id     = aws_vpc.cloudman_vpc.id
  subnet_ids = aws_subnet.cloudman_public_subnet.*.id
  ingress {
    rule_no    = 100
    action     = "allow"
    protocol   = "tcp"
    cidr_block = var.my_address
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 101
    action     = "allow"
    protocol   = "tcp"
    cidr_block = var.office_address
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 102
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "10.0.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 103
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "128.0.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 104
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "192.168.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 110
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }
  ingress {
    rule_no    = 120
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }
  ingress {
    rule_no    = 130
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "10.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 140
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "128.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 150
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "192.168.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 300
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }
  egress {
    rule_no    = 100
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 22
    to_port    = 22
  }
  egress {
    rule_no    = 110
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }
  egress {
    rule_no    = 120
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }
  egress {
    rule_no    = 130
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "10.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  egress {
    rule_no    = 140
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "128.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  egress {
    rule_no    = 150
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "192.168.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  egress {
    rule_no    = 300
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }
  tags = {
    "Name" = "cloudman_public_nacl"
  }
}

resource "aws_network_acl" "cloudman_private_nacl" {
  vpc_id     = aws_vpc.cloudman_vpc.id
  subnet_ids = aws_subnet.cloudman_private_subnet.*.id
  ingress {
    rule_no    = 100
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "10.0.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 101
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "128.0.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 102
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "192.168.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 110
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }
  ingress {
    rule_no    = 120
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }
  ingress {
    rule_no    = 130
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "10.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 140
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "128.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 150
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "192.168.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 300
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }
  egress {
    rule_no    = 100
    action     = "allow"
    protocol   = "all"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    "Name" = "cloudman_private_nacl"
  }
}

resource "aws_network_acl" "cloudman_database_nacl" {
  vpc_id     = aws_vpc.cloudman_vpc.id
  subnet_ids = aws_subnet.cloudman_database_subnet.*.id
  ingress {
    rule_no    = 100
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "128.0.0.0/16"
    from_port  = 3306
    to_port    = 3306
  }
  ingress {
    rule_no    = 110
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "128.0.0.0/16"
    from_port  = 5432
    to_port    = 5432
  }

  ingress {
    rule_no    = 300
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }
  egress {
    rule_no    = 100
    action     = "allow"
    protocol   = "all"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    "Name" = "cloudman_database_nacl"
  }
}

resource "aws_network_acl" "unixman_public_nacl" {
  vpc_id     = aws_vpc.unixman_vpc.id
  subnet_ids = aws_subnet.unixman_public_subnet.*.id
  ingress {
    rule_no    = 100
    action     = "allow"
    protocol   = "tcp"
    cidr_block = var.my_address
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 101
    action     = "allow"
    protocol   = "tcp"
    cidr_block = var.office_address
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 102
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "10.0.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 103
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "128.0.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 104
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "192.168.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 110
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }
  ingress {
    rule_no    = 120
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }
  ingress {
    rule_no    = 130
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "10.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 140
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "128.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 150
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "192.168.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 300
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }
  egress {
    rule_no    = 100
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 22
    to_port    = 22
  }
  egress {
    rule_no    = 110
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }
  egress {
    rule_no    = 120
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }
  egress {
    rule_no    = 130
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "10.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  egress {
    rule_no    = 140
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "128.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  egress {
    rule_no    = 150
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "192.168.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  egress {
    rule_no    = 300
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }
  tags = {
    "Name" = "unixman_public_nacl"
  }
}

resource "aws_network_acl" "unixman_private_nacl" {
  vpc_id     = aws_vpc.unixman_vpc.id
  subnet_ids = aws_subnet.unixman_private_subnet.*.id
  ingress {
    rule_no    = 100
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "10.0.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 101
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "128.0.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 102
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "192.168.0.0/16"
    from_port  = 22
    to_port    = 22
  }
  ingress {
    rule_no    = 110
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }
  ingress {
    rule_no    = 120
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }
  ingress {
    rule_no    = 130
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "10.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 140
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "128.0.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 150
    action     = "allow"
    protocol   = "icmp"
    cidr_block = "192.168.0.0/16"
    from_port  = 0
    to_port    = 0
    icmp_code  = -1
    icmp_type  = -1
  }
  ingress {
    rule_no    = 300
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }
  egress {
    rule_no    = 100
    action     = "allow"
    protocol   = "all"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    "Name" = "unixman_private_nacl"
  }
}

resource "aws_network_acl" "unixman_database_nacl" {
  vpc_id     = aws_vpc.unixman_vpc.id
  subnet_ids = aws_subnet.unixman_database_subnet.*.id
  ingress {
    rule_no    = 100
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "128.0.0.0/16"
    from_port  = 3306
    to_port    = 3306
  }
  ingress {
    rule_no    = 110
    action     = "allow"
    protocol   = "tcp"
    cidr_block = "128.0.0.0/16"
    from_port  = 5432
    to_port    = 5432
  }

  ingress {
    rule_no    = 300
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }
  egress {
    rule_no    = 100
    action     = "allow"
    protocol   = "all"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    "Name" = "unixman_database_nacl"
  }
}
