provider "aws" {
  region = "eu-west-2"
  // shared_credentials_file = "path_file_credentials like C:\Users\terraform\.aws\credentials"
  // %USERPROFILE%.aws\credentials
}

resource "aws_vpc" "${var.vpcname}" {
  cidr_block = "192.168.0.0/24"
  tags = {
    "author" = "babak"
    "name" = "TerraformVPC"
  }

}