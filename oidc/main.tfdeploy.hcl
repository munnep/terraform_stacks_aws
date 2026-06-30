identity_token "aws" {
  audience = ["aws.workload.identity"]
}



deployment "test" {

  inputs = {
    role_arn       = "arn:aws:iam::487939283316:role/tfc-role"
    identity_token = identity_token.aws.jwt
    network_name   = "my-network-test"
    prefix         = "test2"
    cidr_block     = "10.12.0.0/16"
    region         = "eu-north-1"
  }

  destroy = false # alter to true to destroy the deployment after creation
}

