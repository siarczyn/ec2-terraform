resource "aws_key_pair" "mykeypair"{
    key_name = "mykeypair"
    public_key = "${file("D:\\devsdata\\ogTerraform\\myTerrraform\\mykey.pub")}"
}
