variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
  default = "eu-west-2"
}

variable "Security_Group" {
  type = list(string)
  default = ["sg-24076","sg-90890", "sg-456789"]
}

variable "AMIS" {
  type = map
  default = {
    eu-west-1 = "ami-0f29c8402f8cce65c"
    eu-west-2 = "ami-09a2a0f7d2db8baca"
    eu-central-1 = "ami-09042b2f6d07d164a"
    eu-central-2 = "ami-0c9b6c268ecacf10b"
  }
}