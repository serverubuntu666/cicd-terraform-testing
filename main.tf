terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

variable "access_key" {}
variable "secret_key" {}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

resource "random_integer" "random" {
  min = 1
  max = 100
}

resource "aws_vpc" "mylab_vpc" {
  cidr_block           = "10.123.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "mylab-vpc-${random_integer.random.id}"
  }
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_instance" "mylab_instance" {
  ami = "ami-0c2d06d50ce30b442"
  instance_type = "t2.micro"

  tags = {
    Name = "mylab-instance"
  }
}

