terraform {
  required_providers {
    tfe = {
      version = "~> 0.24.0"
    }
  }
}

resource "tfe_team" "team" {
  name         = "team1"
  organization = "emea-se-playground-2019"
  organization_access {
    manage_policies = false
    manage_workspaces = false
    manage_vcs_settings = false
  }
}


