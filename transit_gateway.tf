resource "aws_ec2_transit_gateway" "my_transit_gw" {
  description                     = "create transit gateway for VPCs"
  amazon_side_asn                 = "65065"
  auto_accept_shared_attachments  = "enable"
  dns_support                     = "enable"
  default_route_table_association = "enable"
  default_route_table_propagation = "enable"
  tags = {
    "Name" = "my_transit_gw"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "ansible_tga" {
  subnet_ids         = aws_subnet.ansible_public_subnet.*.id
  transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  vpc_id             = aws_vpc.ansible_vpc.id
  tags = {
    "Name" = "ansible_tga"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "cloudman_tga" {
  subnet_ids         = aws_subnet.cloudman_public_subnet.*.id
  transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  vpc_id             = aws_vpc.cloudman_vpc.id
  tags = {
    "Name" = "cloudman_tga"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "unixman_tga" {
  subnet_ids         = aws_subnet.unixman_public_subnet.*.id
  transit_gateway_id = aws_ec2_transit_gateway.my_transit_gw.id
  vpc_id             = aws_vpc.unixman_vpc.id
  tags = {
    "Name" = "unixman_tga"
  }
}