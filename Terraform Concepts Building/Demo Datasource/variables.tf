variable "AWS_ACCESS_KEY" {
    type = string
    default = "AKIATBRPQONN3NXFRY6H"
}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
default = "eu-west-2"
}

variable "Security_Group"{
    type = list
    default = ["sg-24076", "sg-90890", "sg-456789"]
}

variable "AMIS" {
    type = map
    default = {
        us-east-1 = "ami-0f40c8f97004632f9"
        us-east-2 = "ami-05692172625678b4e"
        #eu-west-2 = "ami-09a2a0f7d2db8baca"
        #eu-west-1 = "ami-0f29c8402f8cce65c"
    }
}
