resource "aws_security_group" "db-acces"{
    vpc_id = "${aws_vpc.scrap.id}"
    name ="db-acces"
    description = "security group to get ssh connection with mongoDB"
    egress{
        from_port = 22
        to_port = 22
        protocol ="TCP"
        cidr_blocks =["0.0.0.0/0"]

    }
    ingress{
        from_port=0
        to_port =0
        protocol="all"
        cidr_blocks=["0.0.0.0/0"]
    }
    tags = {
        Name ="db-acces"
    }
}