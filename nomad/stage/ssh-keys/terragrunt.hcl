terraform {
  source = "git@github.com:hector-medina-nubosas/infrastructure-modules.git//do/ssh-keys"
}

include {
  path = find_in_parent_folders()
}

inputs = {
    name = "SSH key hector.medina@nubosas.com"
    public-ssh-key-file = "id_ed25519.pub"
}