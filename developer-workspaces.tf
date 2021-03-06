///////////////////////////////////////////
resource "tfe_workspace" "app3" {
  name         = "app3"
  organization = tfe_organization.org.id
}

resource "tfe_team_access" "app3" {
  team_id      = tfe_team.developer.id
  workspace_id = tfe_workspace.app3.id
  permissions {
    runs              = "apply"
    variables         = "write"
    state_versions    = "write"
    sentinel_mocks    = "read"
    workspace_locking = true
  }
}
//////////////////////////////////////////




//////////////////////////////////////////
resource "tfe_workspace" "app4" {
  name         = "app4"
  organization = tfe_organization.org.id
}

resource "tfe_team_access" "app4" {
  team_id      = tfe_team.developer.id
  workspace_id = tfe_workspace.app2.id
  permissions {
    runs              = "apply"
    variables         = "write"
    state_versions    = "read"
    sentinel_mocks    = "read"
    workspace_locking = true
  }
}
//////////////////////////////////////////





