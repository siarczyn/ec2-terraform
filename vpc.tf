# internet vpc
resource "aws_vpc" "scrap"{
    cidr_block = "10.13.0.0/16"
    instance_tenancy ="default"
    enable_dns_support = "true"
    enable_dns_hostnames = "true"
    enable_classiclink = "false"
    tags={
        Name = "scrap"
    }
}

