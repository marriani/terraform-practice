provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "example" {
  ami                     = "ami-007020fd9c84e18c7"
  instance_type           = "t2.micro"
  subnet_id               = subnet-07a8a03de128c955e
  key _name               = ani1
  tags = {
    Name = "tf-example"
  }
}
