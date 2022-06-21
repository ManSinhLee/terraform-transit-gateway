resource "aws_route_table_association" "ansible_public_rtb_association" {
  count          = length(data.aws_availability_zones.available.names)
  subnet_id      = element(aws_subnet.ansible_public_subnet.*.id, count.index)
  route_table_id = aws_route_table.ansible_public_rtb.id
}

resource "aws_route_table_association" "ansible_private_rtb_association" {
  count          = length(data.aws_availability_zones.available.names)
  subnet_id      = element(aws_subnet.ansible_private_subnet.*.id, count.index)
  route_table_id = aws_route_table.ansible_private_rtb.id
}

resource "aws_route_table_association" "ansible_database_rtb_association" {
  count          = length(data.aws_availability_zones.available.names)
  subnet_id      = element(aws_subnet.ansible_database_subnet.*.id, count.index)
  route_table_id = aws_route_table.ansible_database_rtb.id
}

resource "aws_route_table_association" "cloudman_public_rtb_association" {
  count          = length(data.aws_availability_zones.available.names)
  subnet_id      = element(aws_subnet.cloudman_public_subnet.*.id, count.index)
  route_table_id = aws_route_table.cloudman_public_rtb.id
}

resource "aws_route_table_association" "cloudman_private_rtb_association" {
  count          = length(data.aws_availability_zones.available.names)
  subnet_id      = element(aws_subnet.cloudman_private_subnet.*.id, count.index)
  route_table_id = aws_route_table.cloudman_private_rtb.id
}

resource "aws_route_table_association" "cloudman_database_rtb_association" {
  count          = length(data.aws_availability_zones.available.names)
  subnet_id      = element(aws_subnet.cloudman_database_subnet.*.id, count.index)
  route_table_id = aws_route_table.cloudman_database_rtb.id
}


resource "aws_route_table_association" "unixman_public_rtb_association" {
  count          = length(data.aws_availability_zones.available.names)
  subnet_id      = element(aws_subnet.unixman_public_subnet.*.id, count.index)
  route_table_id = aws_route_table.unixman_public_rtb.id
}

resource "aws_route_table_association" "unixman_private_rtb_association" {
  count          = length(data.aws_availability_zones.available.names)
  subnet_id      = element(aws_subnet.unixman_private_subnet.*.id, count.index)
  route_table_id = aws_route_table.unixman_private_rtb.id
}

resource "aws_route_table_association" "unixman_database_rtb_association" {
  count          = length(data.aws_availability_zones.available.names)
  subnet_id      = element(aws_subnet.unixman_database_subnet.*.id, count.index)
  route_table_id = aws_route_table.unixman_database_rtb.id
}