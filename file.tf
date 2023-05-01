 terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  region     = "ap-south-1"
  access_key = "terraform"
  secret_key = "YWKsN5%B"
}
resource "aws_instance" "this" {
  ami                     = "ami-016eb5d644c333cc"
  instance_type           = "t2.micro"
  security_groups         = ["launch-wizard-1"]
  tags                    = {
                              Name = "RedHatServer"
			      }
}
