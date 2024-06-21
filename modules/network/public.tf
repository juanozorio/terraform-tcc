resource "aws_subnet" "public_subnet_1a" {
  vpc_id     = aws_vpc.main.id

  cidr_block = "10.0.0.0/20"
  availability_zone = format("%sa", var.aws_region)

  tags = {
    Name = format("%s-public-1a", var.name)
  }
}

resource "aws_subnet" "public_subnet_1c" {
  vpc_id     = aws_vpc.main.id

  cidr_block = "10.0.16.0/20"
  availability_zone = format("%sc", var.aws_region)

  tags = {
    Name = format("%s-public-1c", var.name)
  }
}
