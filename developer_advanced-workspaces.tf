///////////////////////////////////////////
resource "tfe_workspace" "app1" {
  name         = "app1"
  organization = tfe_organization.org.id
}

resource "tfe_team_access" "app1" {
  team_id      = tfe_team.developer_advanced.id
  workspace_id = tfe_workspace.app1.id
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
resource "tfe_workspace" "app2" {
  name         = "app2"
  organization = tfe_organization.org.id
}

resource "tfe_team_access" "app2" {
  team_id      = tfe_team.developer_advanced.id
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





