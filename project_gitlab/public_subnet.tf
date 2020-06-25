resource "aws_subnet" "public01" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.public_cidr_block1}" 
  map_public_ip_on_launch = true
  availability_zone   = "${var.region}a"
}

resource "aws_subnet" "public02" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.public_cidr_block2}"
  map_public_ip_on_launch = true
  availability_zone   = "${var.region}b"
}

resource "aws_subnet" "public03" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "${var.public_cidr_block3}"
  map_public_ip_on_launch = true
  availability_zone   = "${var.region}c"
}