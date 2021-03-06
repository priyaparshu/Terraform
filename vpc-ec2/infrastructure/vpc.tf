provider "aws" {
  region =   "${var.region}"
}

terraform {
  backend "s3" {}
}

resource "aws_vpc" "production-vpc" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_hostnames = true


  tags {
    Name = "Production-VPC"
  }
}

resource "aws_subnet" "public-subnet-1" {
  cidr_block           = "${var.public_subnet_1_cidr}"
  vpc_id               = "${aws_vpc.production-vpc.id}"
  availability_zone    = "us-east-1a"

  tags {
    Name="public-Subnet-1"
  }
}

resource "aws_subnet" "public-subnet-2" {
  cidr_block           = "${var.public_subnet_2_cidr}"
  vpc_id               = "${aws_vpc.production-vpc.id}"
  availability_zone    = "us-east-1b"

  tags {
    Name="public-Subnet-2"
  }
}


resource "aws_subnet" "public-subnet-3" {
  cidr_block           = "${var.public_subnet_3_cidr}"
  vpc_id               = "${aws_vpc.production-vpc.id}"
  availability_zone    = "us-east-1c"

  tags {
    Name="public-Subnet-3"
  }
}

resource "aws_subnet" "private-subnet-1" {
  cidr_block           = "${var.private_subnet_1_cidr}"
  vpc_id               = "${aws_vpc.production-vpc.id}"
  availability_zone    = "us-east-1a"

  tags {
    Name="public-Subnet-1"
  }
}


resource "aws_subnet" "private-subnet-2" {
  cidr_block           = "${var.private_subnet_2_cidr}"
  vpc_id               = "${aws_vpc.production-vpc.id}"
  availability_zone    = "us-east-1b"

  tags {
    Name="public-Subnet-2"
  }
}

resource "aws_subnet" "private-subnet-3" {
  cidr_block           = "${var.private_subnet_3_cidr}"
  vpc_id               = "${aws_vpc.production-vpc.id}"
  availability_zone    = "us-east-1c"

  tags {
    Name="public-Subnet-3"
  }
}
