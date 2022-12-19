terraform {
  source = "git@github.com:hector-medina-nubosas/infrastructure-modules.git//do/vpc"
}

include {
  path = find_in_parent_folders()
}

inputs = {
    name = "Stage-VPC"
    region = "ams3"
    ip_range = "10.10.0.0/24"
}