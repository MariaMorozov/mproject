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
  region = "${var.region}"
  version = "~> 1.0"
   # access_key = "AKIASSBEC6MHXFTPYNB2"
   # secret_key = "eX+RRJhaslsvVvAYmaVP2hZDo86VFdmvXt/CqAXc"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

# Create Subnets
data "aws_subnets" "jenkins_Subnet_public" {
  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
}

data "aws_subnet" "example" {
  for_each = data.aws_subnets.example.ids
  id       = each.value
}

output "subnet_cidr_blocks" {
  value = [for s in data.aws_subnet.example : s.cidr_block]
}