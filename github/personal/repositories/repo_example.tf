resource "github_repository" "repo_example" {
  name                        = "repo-example"
  description                 = "Template for infra projects using Terraform"
  homepage_url                = ""
  visibility                  = "private"
  has_issues                  = true
  has_discussions             = false
  has_projects                = true
  has_wiki                    = true
  is_template                 = true
  allow_merge_commit          = true
  allow_squash_merge          = true
  allow_rebase_merge          = true
  allow_auto_merge            = false
  squash_merge_commit_title   = "PR_TITLE"
  squash_merge_commit_message = "COMMIT_MESSAGES"
  merge_commit_title          = "PR_TITLE"
  merge_commit_message        = "PR_BODY"
  delete_branch_on_merge      = false
  web_commit_signoff_required = false
  has_downloads               = true
  archived                    = false
  topics = [
    "infra",
    "template",
    "terraform",
    "github"
  ]
}

resource "github_branch" "repo_example_branch_main" {
  repository = github_repository.repo_example.name
  branch     = "main"
}

resource "github_branch_default" "repo_example_branch_default" {
  repository = github_repository.repo_example.name
  branch     = github_branch.repo_example_branch_main.branch
}
