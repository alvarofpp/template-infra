resource "github_team" "team_example" {
  name           = "TeamExample"
  description    = ""
  privacy        = "closed"
  parent_team_id = null
}

resource "github_team_membership" "urnai_member_example" {
  team_id  = github_team.team_example.id
  username = "member_example"
  role     = "maintainer"
}

resource "github_team_repository" "urnai_urnai_tools_admin" {
  team_id    = github_team.team_example.id
  repository = "repo-example"
  permission = "admin"
}
resource "github_team_repository" "urnai_urnai_tools_maintain" {
  team_id    = github_team.team_example.id
  repository = "repo-example"
  permission = "maintain"
}
resource "github_team_repository" "urnai_urnai_tools_pull" {
  team_id    = github_team.team_example.id
  repository = "repo-example"
  permission = "pull"
}
resource "github_team_repository" "urnai_urnai_tools_push" {
  team_id    = github_team.team_example.id
  repository = "repo-example"
  permission = "push"
}
resource "github_team_repository" "urnai_urnai_tools_triage" {
  team_id    = github_team.team_example.id
  repository = "repo-example"
  permission = "triage"
}
