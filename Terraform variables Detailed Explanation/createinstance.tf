resource "aws_instance" "myFirstInstance" {
    ami       = "ami-09a2a0f7d2db8baca"
    instance_type = "t2.micro"

    tags = {
        Name = "demoinstance"
    }
    security_groups = "${var.security_Group}"
}