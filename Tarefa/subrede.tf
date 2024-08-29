resource "aws_subnet" "subrede1" {
  tags = {
    Name = "subrede1"
  }
  vpc_id = "vpc-072626b615469eda2"
  cidr_block = "172.31.100.0/24"
}

resource "aws_subnet" "subrede2" {
  tags = {
    Name = "subrede2"
  }
  vpc_id = "vpc-072626b615469eda2"
  cidr_block = "172.31.102.0/24"
}