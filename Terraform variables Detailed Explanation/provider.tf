provider "aws" {
    access_key = "${var.aws.access_key_id}"
    secret_key = "${var.aws.secret_key_id}"
    region     = "${var.aws.region_id}"
}