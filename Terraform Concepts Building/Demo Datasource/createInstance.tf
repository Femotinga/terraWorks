data "aws_availability_zones" "availability" {}

resource "aws_instance" "MyFirstInstnace" {
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
  #availability_zone = data.aws_availability_zones.available.names[1]
  availability_zone = element(data.aws_availability_zones.availability.names, 1)
  tags = {
    Name = "custom_instance"
  }
}