component "network" {
  source = "./../network"
  inputs = {
    network_name = var.network_name
    prefix = var.prefix
    cidr_block = var.cidr_block
  }

  providers = {
      aws = provider.aws.this
  }
}
