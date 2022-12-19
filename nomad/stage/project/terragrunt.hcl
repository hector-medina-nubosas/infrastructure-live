terraform {
  source = "git@github.com:hector-medina-nubosas/infrastructure-modules.git//do/project"
}

include {
  path = find_in_parent_folders()
}

inputs = {
    name = "NOMAD STAGE"
    description = "Demo project for testing terragrunt and nomad."
    environment = "Staging"
}
