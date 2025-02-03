data "aws_ip_ranges" "eu_west_ip_range" {
    regions = ["eu-west-1","eu-west-2"]
    services = ["EC2"]
}

resource "aws_security_group" "sg-custom_eu_west" {
    name        = "secgroup-custom_eu_west"
    description = "Example security group"
    #vpc_id     = aws_vpc.custom_vpc.id

    ingress {
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = slice(data.aws_ip_ranges.eu_west_ip_range.cidr_blocks, 0, 50)
    }

    tags = {
    CreateDate = data.aws_ip_ranges.eu_west_ip_range.create_date
    SyncToken = data.aws_ip_ranges.eu_west_ip_range.sync_token
    }

}