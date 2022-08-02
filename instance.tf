terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "aws" {
access_key = var.access_key
secret_key = var.secret_key
  region = var.aws_region
}

resource "aws_instance" "example"{
    ami = "ami-0a1ee2fb28fe05df3"
    instance_type="t2.nano"

    # #vpc subnet 
    # subnet_id= "${aws_subnet.main-public-1.id}"

    #security group
    vpc_security_group_ids = ["${aws_security_group.db-acces.id}"]

    # # the public SSH key
    # key_name = "${aws_key_pair.mykeypair.key_name}"
}
