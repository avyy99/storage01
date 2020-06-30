variable_access_key" {}
variable_secret_key" {}

Provider "aws" {
	access_key = var.aws_access_key
	secret_key = var.aws_secret_key
	region = "ap-northeast-1"
}

resource " aws_vpc" "vpctest" {
	cidr_block = "172.16.0.0/24"
	tags = {
		name = "vpctest"
	}
}