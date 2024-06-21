resource "aws_nat_gateway" "nat" {
  subnet_id = aws_subnet.private_subnet_1a.id
  allocation_id = aws_eip.vpc_eip.allocation_id
  
  tags = {
    Name = format("%s-nat-gateway", var.name)
  }
}