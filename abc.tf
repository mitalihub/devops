
terraform {
  backend "s3" {
    bucket = "testube123"
    key    = "idaas-vpc/terraform.tfstate"
    region = "us-east-2"
  }
}





provider "aws" {
    region = "us-east-2"
}

resource "aws_vpc" "vpc1"
{
cidr_block = "10.0.0.0/16"
tags = {
Name = "vpctag"
}
}

