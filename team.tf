resource "tfe_team" "team" {
  name         = "team1"
  organization = var.org
  organization_access {
    manage_policies = false
    manage_workspaces = false
    manage_vcs_settings = false
  }
}
