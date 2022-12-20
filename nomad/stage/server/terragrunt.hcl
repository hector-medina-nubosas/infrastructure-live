terraform {
  source = "git@github.com:hector-medina-nubosas/infrastructure-modules.git//do/server-leader-client"
}

include {
  path = find_in_parent_folders()
}

dependency "project" {
    config_path = "../project"
}

dependency "vpc" {
    config_path = "../vpc"
}

dependency "ssh-keys" {
    config_path = "../ssh-keys"
}

inputs = {
    image = "debian-11-x64"
    name = "server-leader-client"
    region = "ams3"
    size = "s-1vcpu-2gb"
    vpc_id = dependency.vpc.outputs.id
    project_id = dependency.project.outputs.id
    ssh_keys_fingerprint = [ dependency.ssh-keys.outputs.fingerprint ]
}