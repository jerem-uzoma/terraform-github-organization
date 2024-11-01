# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED VARIABLES
# These variables must be set when using this module.
# ---------------------------------------------------------------------------------------------------------------------

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL VARIABLES
# These variables have defaults, but may be overridden.
# ---------------------------------------------------------------------------------------------------------------------

variable "admins" {
  description = "A list of admins to add to the organization."
  type        = set(string)
  default = [
    "terraform-test-admin",
  ]
}

variable "all_members_team_name" {
  description = "The name of the team that contains all members of the organization."
  type        = string
  default     = "everyone"
}

variable "all_members_team_visibility" {
  description = "The level of privacy for the team. Must be one of `secret` or `closed`."
  type        = string
  default     = "secret"
}

variable "blocked_users" {
  description = "A list of users that should be blocked by the organization."
  type        = set(string)

  # randomly chosen users, sorry for blocking you guys!
  default = [
    "Testuser1",
    "Testuser2",
  ]
}

variable "members" {
  description = "A list of members to add to the organization."
  type        = set(string)
  default = [
    "terraform-test-user-1",
    "terraform-test-user-2",
  ]
}

variable "projects" {
  description = "A list of projects to add to the organization."
  type        = any
  default = [
    {
      name = "Test Project"
      body = "This is a test project created by Terraform"
    },
    {
      name = "Test Project without a body"
    }
  ]
}
