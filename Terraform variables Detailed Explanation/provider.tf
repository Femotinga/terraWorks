provider "aws" {
    access_key = "${aws.access_key_id}"
    secret_key = "${aws.secret_key_id}"
    region     = "${aws.region_id}"
}