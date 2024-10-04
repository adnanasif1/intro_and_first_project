
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0da424eb883458071"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}

