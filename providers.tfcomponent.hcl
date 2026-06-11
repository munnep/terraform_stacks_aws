required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 6.50.0"
  }
}

provider "aws" "this" {
  config {
    access_key = var.access_key
    secret_key = var.secret_key
    token      = var.session_token
    region     = var.region
  }
}
