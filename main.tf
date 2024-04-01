provider "aws" {
  alias ="us-east-1"
  region = "us-east-1"
}
provider "aws" {
  alias =  "ap-south-1"
  region = "ap-south-1"
}
resource "aws_instance" "example" {
  ami                     = "ami-080e1f13689e07408"
  instance_type           = "t2.micro"
  subnet_id               = subnet-0cd814f5b7e9bf432
  key _name               = ani1
  provider                = aws.us-east-1
  tags = {
    Name = "tf-example"
  }
}
resource "aws_instance" "exa" {
  ami                     = "ami-007020fd9c84e18c7"
  instance_type           = "t2.micro"
  subnet_id               = subnet-07a8a03de128c955e
  key _name               = ani1
  provider                = aws.ap-south-1
  tags = {
    Name = "tfani-example"
  }
}
