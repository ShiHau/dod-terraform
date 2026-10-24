terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-03d3019940b16a1b2" # Amazon Linux AMI 2023 kernel 6.18 // ap-southeast-1
  instance_type = "t3.micro"
}
