resource "tfe_team" "developer" {
  name         = "developer"
  organization = tfe_org.org.id
  organization_access {
    manage_policies = false
    manage_workspaces = false
    manage_vcs_settings = false
  }
}

resource "tfe_team" "developer_advanced" {
  name         = "developer_advanced"
  organization = tfe_org.org.id
  organization_access {
    manage_policies = false
    manage_workspaces = false
    manage_vcs_settings = false
  }
}

resource "tfe_team" "security" {
  name         = "security"
  organization = tfe_org.org.id
  organization_access {
    manage_policies = true
    manage_workspaces = false
    manage_vcs_settings = false
  }
}

