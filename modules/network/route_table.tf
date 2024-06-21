resource "aws_route_table" "igw_route_table" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = format("%s-public-route", var.name)
  }
}

resource "aws_route_table" "nat" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = format("%s-private-route", var.name)
  }
}

resource "aws_route" "public_internet_access" {
  route_table_id = aws_route_table.igw_route_table.id

  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.igw.id
}

resource "aws_route" "nat_access" {
  route_table_id = aws_route_table.nat.id

  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = aws_nat_gateway.nat.id
}