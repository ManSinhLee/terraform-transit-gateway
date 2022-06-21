resource "aws_instance" "ansible_public_web_1a" {
  ami                    = data.aws_ami.amz_linux_2.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key_pair.key_name
  subnet_id              = aws_subnet.ansible_public_subnet[0].id
  vpc_security_group_ids = [aws_security_group.ansible_public_sg.id]
  tags = {
    "Name"     = "ansible_public_web_1a",
    "UserName" = "CloudMan"
  }
}

resource "aws_instance" "cloudman_public_web_1a" {
  ami                    = data.aws_ami.amz_linux_2.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key_pair.key_name
  subnet_id              = aws_subnet.cloudman_public_subnet[0].id
  vpc_security_group_ids = [aws_security_group.cloudman_public_sg.id]
  tags = {
    "Name"     = "cloudman_public_web_1a",
    "UserName" = "CloudMan"
  }
}

resource "aws_instance" "unixman_public_web_1a" {
  ami                    = data.aws_ami.amz_linux_2.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key_pair.key_name
  subnet_id              = aws_subnet.unixman_public_subnet[0].id
  vpc_security_group_ids = [aws_security_group.unixman_public_sg.id]
  tags = {
    "Name"     = "unixman_public_web_1a",
    "UserName" = "CloudMan"
  }
}

resource "aws_instance" "ansible_private_app_1a" {
  ami                    = data.aws_ami.amz_linux_2.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key_pair.key_name
  subnet_id              = aws_subnet.ansible_private_subnet[0].id
  vpc_security_group_ids = [aws_security_group.ansible_private_sg.id]
  user_data              = file("~/bash-codes/redhat.sh")
  tags = {
    "Name"     = "ansible_private_app_1a",
    "UserName" = "CloudMan"
  }
}

resource "aws_instance" "cloudman_private_app_1a" {
  ami                    = data.aws_ami.amz_linux_2.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key_pair.key_name
  subnet_id              = aws_subnet.cloudman_private_subnet[0].id
  vpc_security_group_ids = [aws_security_group.cloudman_private_sg.id]
  user_data              = file("~/bash-codes/redhat.sh")
  tags = {
    "Name"     = "cloudman_private_app_1a",
    "UserName" = "CloudMan"

  }
}

resource "aws_instance" "unixman_private_app_1a" {
  ami                    = data.aws_ami.amz_linux_2.id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key_pair.key_name
  subnet_id              = aws_subnet.unixman_private_subnet[0].id
  vpc_security_group_ids = [aws_security_group.unixman_private_sg.id]
  user_data              = file("~/bash-codes/redhat.sh")
  tags = {
    "Name"     = "unixman_private_app_1a",
    "UserName" = "CloudMan"
  }
}