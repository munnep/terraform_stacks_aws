variable "network_name" {
  type = string
}

variable "prefix" {
  type = string
}
variable "cidr_block" {
  type = string
}

variable "access_key" {
  description = "AWS access key"
  type        = string
  ephemeral   = true
}

variable "secret_key" {
  description = "AWS sensitive secret key."
  type        = string
  sensitive   = true
  ephemeral   = true
}

variable "session_token" {
  description = "AWS session token."
  type        = string
  sensitive   = true
  ephemeral   = true
}

variable "region" {
  description = "AWS region."
  type        = string
}