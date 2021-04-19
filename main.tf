terraform {
  required_providers {
    tfe = {
      version = "~> 0.24.0"
    }
  }
}

provider "tfe" {
  hostname = var.hostname
  token    = var.token
}


