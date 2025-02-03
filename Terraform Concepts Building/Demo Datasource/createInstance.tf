data "aws_availability_zones" "availability" {}

data "aws_ami" "latest-ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Amazon Linux 2
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
}
  filter {
    name   = "virtualization-type"
        values = ["hvm"]
      }
}

resource "aws_instance" "MyFirstInstance" {
  ami           = data.aws_ami.latest-ubuntu.id
  instance_type = "t2.micro"
  #availability_zone = data.aws_availability_zones.available.names[1]
  availability_zone = element(data.aws_availability_zones.availability.names, 1)
  tags = {
    Name = "custom_instance"
  }
}