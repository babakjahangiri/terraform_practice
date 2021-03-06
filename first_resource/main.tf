provider "aws" {
  region = "eu-west-2"
  // shared_credentials_file = "path_file_credentials like C:\Users\terraform\.aws\credentials"
  // %USERPROFILE%.aws\credentials
}

resource "aws_vpc" "vpc1" {

  cidr_block = "192.168.0.0/24"
  tags = {
    "author" = "babak"
    "Name"   = var.intputname
  }

}

output "vpcId" {
  value = aws_vpc.vpc1.id
}

