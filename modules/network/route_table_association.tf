resource "aws_route_table_association" "public_1a" {
	subnet_id = aws_subnet.public_subnet_1a.id
	route_table_id = aws_route_table.igw_route_table.id
}

resource "aws_route_table_association" "public_1c" {
	subnet_id = aws_subnet.public_subnet_1c.id
	route_table_id = aws_route_table.igw_route_table.id
}