store "varset" "aws-credentials" {
  name     = "aws-credentials"
  category = "env"
}

deployment "test" {

  inputs = {
    network_name  = "my-network"
    prefix        = "test"
    cidr_block    = "10.12.0.0/16"
    access_key    = store.varset.aws-credentials.AWS_ACCESS_KEY_ID
    secret_key    = store.varset.aws-credentials.AWS_SECRET_ACCESS_KEY
    session_token = store.varset.aws-credentials.AWS_SESSION_TOKEN
    region        = "eu-north-1"
  }

  destroy = false           # alter to true to destroy the deployment after creation
}

