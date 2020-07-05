variable "aws_access_key" {}
variable "aws_secret_key" {}

provider "aws" {
 access_key = var.aws_access_key
 secret_key = var.aws_secret_key
 region = "ap-northeast-1"
}

resource "aws_vpc" "vpctest" {
 cidr_block = "172.16.0.0/24"
 tags = {
  name = "vpctest"
 }
}

resource "aws_subnet" "testsubnet-a01" {
 cidr_block = "172.16.0.0/28"
 vpc_id = aws_vpc.vpctest.id
 availability_zone = "ap-northeast-1a"
 tags = {
  Name = "testsubnet-a01"
 }
}

resource "aws_subnet" "testsubnet-c01" {
 cidr_block = "172.16.0.16/28"
 vpc_id = aws_vpc.vpctest.id
 availability_zone = "ap-northeast-1c"
 tags = {
  Name = "testsubnet-c01"
 }
}

