variable "region" {
  default = "us-east-1"
  description = "AWS region"
}
variable "vpc_cidr" {
  default =  "10.0.0.0/16"
  description = "VPC CIDR BLOCK"
}

variable "public_subnet_1_cidr" {
  description = "Public Subnet 1 CIDR"
}

variable "public_subnet_2_cidr" {
  description = "Public Subnet 2 CIDR"
}

variable "public_subnet_3_cidr" {
  description = "Public Subnet 3 CIDR"
}

variable "private_subnet_1_cidr" {
  description = "Private Subnet 1 CIDR"
}

variable "private_subnet_2_cidr" {
  description = "Private Subnet 2 CIDR"
}


variable "private_subnet_3_cidr" {
  description = "Private Subnet 3 CIDR"
}