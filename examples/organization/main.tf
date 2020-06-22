# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# MANAGE A GITHUB ORGANIZATION
#   - manage blocked users
#   - manage projects
#   - manage memberships ( admins and members )
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

module "organization" {
  source  = "mineiros-io/organization/github"
  version = "0.1.4"

  all_members_team_name       = "everyone"
  all_members_team_visibility = "closed"

  members = [
    "terraform-test-user-1",
    "terraform-test-user-2",
  ]

  admins = [
    "terraform-test-admin",
  ]

  # randomly chosen users, sorry for blocking you guys!
  blocked_users = [
    "Testuser1",
    "Testuser2",
  ]

  projects = [
    {
      name = "Test Project"
      body = "This is a test project created by Terraform"
    },
    {
      name = "Test Project without a body"
    }
  ]
}

# ------------------------------------------------------------------------------
# EXAMPLE PROVIDER CONFIGURATION
# ------------------------------------------------------------------------------

provider "github" {
  version = "~> 2.6"
}

# ------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES:
# ------------------------------------------------------------------------------
# You can provide your credentials via the
#   GITHUB_TOKEN and
#   GITHUB_ORGANZIATION, environment variables,
# representing your Access Token and the organization, respectively.
# ------------------------------------------------------------------------------
