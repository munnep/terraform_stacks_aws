variable "network_name" {
  type = string
}

variable "role_arn" {
  type = string
}

variable "identity_token" {
  type      = string
  ephemeral = true
}



variable "prefix" {
  type = string
}
variable "cidr_block" {
  type = string
}

variable "region" {
  description = "AWS region."
  type        = string
}