data "aws_availability_zones" "availability" {}

data "aws_ami" "latest-ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # ubuntu Linux
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

  provisioner "local-exec" {
    command = "echo aws_instance.MyFirstInstance.private_ip >> my_private_ips.txt"
  }
  tags = {
    Name = "custom_instance"
  }

  output "public_ip" {
    value       = aws_instance.MyFirstInstance.public_ip
    #sensitive   = true
    description = "This is my public ip"
   #depends_on  = []
  }
  
}