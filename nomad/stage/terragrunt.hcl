terragrunt_version_constraint = ">= v0.40.0, < v1.0.0"

remote_state {
  backend = "s3"

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite"
  }

  config = {
    bucket         = "hector-medina-terraform"
    key            = "nomad/${path_relative_to_include()}/terraform.tfstate"
    region         = "eu-west-3"
    encrypt        = true
    dynamodb_table = "hector-medina-terraform-locks"
  }
}