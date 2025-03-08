terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.88.0"
    }
  }
}

provider "aws" {
region = "us-east-1"
}
resource "aws_instance" "myserver" {
  ami = "ami-05b10e08d247fb927"
  instance_type = "t2.micro"

  key_name = "mywebserver-01"

  tags = {
    Name = "SampleServer"
  }
}