variable "cidr_block" {
  type = string
}

variable "network_name" {
  type = string
}

variable "prefix" {
  type = string
}


resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

    tags = {
    Name = "${var.prefix}-${var.network_name}"
  }
}

