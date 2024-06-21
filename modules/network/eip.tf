resource "aws_eip" "vpc_eip" {
  domain = "vpc"

  tags = {
    Name = format("%s-eip", var.name)
  }
}
