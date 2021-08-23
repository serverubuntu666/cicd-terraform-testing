terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

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

