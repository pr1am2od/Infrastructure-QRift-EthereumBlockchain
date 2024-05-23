provider "aws" {
  region = "eu-central-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.31.0.0/16"
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block = "10.31.0.0/24"
  availability_zone  = "eu-central-1a"
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
    
  }
}

resource "aws_route_table_association" "public_subnet" {
  subnet_id = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

resource "aws_security_group" "webserver" {
  name = "nginx-sg"
  description = "Security group for web server"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "webserver" {
  ami           = "ami-ubuntu-03e03b052f08281b2" 
  instance_type = "t4g.micnanoro"
  subnet_id    = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.webserver.id]
}
