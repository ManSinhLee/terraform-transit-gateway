resource "aws_security_group" "ansible_public_sg" {
  name   = "ansible_public_sg"
  vpc_id = aws_vpc.ansible_vpc.id
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.my_address, var.office_address, "10.0.0.0/16", "128.0.0.0/16", "192.168.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow SSH from my_address, office and from other vpcs"
  }
  ingress {
    from_port        = -1
    to_port          = -1
    protocol         = "icmp"
    cidr_blocks      = ["10.0.0.0/16", "128.0.0.0/16", "192.168.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow PING"
  }
  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow HTTP traffic from internet"
  }
  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow HTTPs traffic from internet"
  }


  egress {
    from_port        = -1
    to_port          = -1
    protocol         = "icmp"
    cidr_blocks      = ["10.0.0.0/16", "128.0.0.0/16", "192.168.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow PING"
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow all traffic outbound"
  }
}

resource "aws_security_group" "ansible_private_sg" {
  name   = "ansible_private_sg"
  vpc_id = aws_vpc.ansible_vpc.id
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["10.0.0.0/16", "128.0.0.0/16", "192.168.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow SSH from vpc"
  }
  ingress {
    from_port        = -1
    to_port          = -1
    protocol         = "icmp"
    cidr_blocks      = ["10.0.0.0/16", "128.0.0.0/16", "192.168.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow PING"
  }
  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow HTTP traffic from internet"
  }
  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow HTTPs traffic from internet"
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow all traffic outbound"
  }
}

resource "aws_security_group" "ansible_database_sg" {
  name   = "ansible_database_sg"
  vpc_id = aws_vpc.ansible_vpc.id
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16", "128.0.0.0/16", "192.168.0.0/16"]
    description = "allow traffic inside vpc"
  }

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
    description = "allow traffic inside vpc"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["10.0.0.0/16"]
    description = "allow all traffic outbound"
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow all traffic outbound"
  }
}

resource "aws_security_group" "cloudman_public_sg" {
  name   = "cloudman_public_sg"
  vpc_id = aws_vpc.cloudman_vpc.id
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.my_address, var.office_address, "10.0.0.0/16", "128.0.0.0/16", "192.168.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow SSH from my ip address"
  }
  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow HTTP traffic from internet"
  }
  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow HTTPs traffic from internet"
  }
  ingress {
    from_port        = -1
    to_port          = -1
    protocol         = "icmp"
    cidr_blocks      = ["10.0.0.0/16", "128.0.0.0/16", "192.168.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow PING"
  }
  egress {
    from_port        = -1
    to_port          = -1
    protocol         = "icmp"
    cidr_blocks      = ["10.0.0.0/16", "128.0.0.0/16", "192.168.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow PING"
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow all traffic outbound"
  }
}

resource "aws_security_group" "cloudman_private_sg" {
  name   = "cloudman_private_sg"
  vpc_id = aws_vpc.cloudman_vpc.id
  ingress {
    from_port        = -1
    to_port          = -1
    protocol         = "icmp"
    cidr_blocks      = ["10.0.0.0/16", "128.0.0.0/16", "192.168.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow PING"
  }
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["10.0.0.0/16", "128.0.0.0/16", "192.168.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow SSH from vpc"
  }
  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow HTTP traffic from internet"
  }
  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow HTTPs traffic from internet"
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow all traffic outbound"
  }
}

resource "aws_security_group" "cloudman_database_sg" {
  name   = "cloudman_database_sg"
  vpc_id = aws_vpc.cloudman_vpc.id
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["128.0.0.0/16"]
    description = "allow traffic inside vpc"
  }

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["128.0.0.0/16"]
    description = "allow traffic inside vpc"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["128.0.0.0/16"]
    description = "allow all traffic outbound"
  }
}


resource "aws_security_group" "unixman_public_sg" {
  name   = "unixman_public_sg"
  vpc_id = aws_vpc.unixman_vpc.id
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.my_address, var.office_address, "10.0.0.0/16", "128.0.0.0/16", "192.168.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow SSH from my ip address"
  }
  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow HTTP traffic from internet"
  }
  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow HTTPs traffic from internet"
  }
  ingress {
    from_port        = -1
    to_port          = -1
    protocol         = "icmp"
    cidr_blocks      = ["10.0.0.0/16", "128.0.0.0/16", "192.168.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow PING"
  }
  egress {
    from_port        = -1
    to_port          = -1
    protocol         = "icmp"
    cidr_blocks      = ["10.0.0.0/16", "128.0.0.0/16", "192.168.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow PING"
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow all traffic outbound"
  }
}

resource "aws_security_group" "unixman_private_sg" {
  name   = "unixman_private_sg"
  vpc_id = aws_vpc.unixman_vpc.id
  ingress {
    from_port        = -1
    to_port          = -1
    protocol         = "icmp"
    cidr_blocks      = ["10.0.0.0/16", "128.0.0.0/16", "192.168.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow PING"
  }
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["10.0.0.0/16", "128.0.0.0/16", "192.168.0.0/16"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow SSH from vpc"
  }
  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow HTTP traffic from internet"
  }
  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow HTTPs traffic from internet"
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    description      = "allow all traffic outbound"
  }
}

resource "aws_security_group" "unixman_database_sg" {
  name   = "unixman_database_sg"
  vpc_id = aws_vpc.unixman_vpc.id
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["192.0.0.0/16"]
    description = "allow traffic inside vpc"
  }

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["192.0.0.0/16"]
    description = "allow traffic inside vpc"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["192.0.0.0/16"]
    description = "allow all traffic outbound"
  }
}