resource "aws_subnet" "private_subnet_1a" {
  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.32.0/20"
  availability_zone = format("%sa", var.aws_region)

  tags = {
    Name = format("%s-private-1a", var.name)
  }
}

resource "aws_subnet" "private_subnet_1c" {
  vpc_id = aws_vpc.main.id

  cidr_block = "10.0.48.0/20"
  availability_zone = format("%sc", var.aws_region)

  tags = {
    Name = format("%s-private-1c", var.name)
  }
}