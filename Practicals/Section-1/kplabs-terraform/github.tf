  terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "4.27.1"
    }
  }
}

provider "github" {
  token = "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"
}

resource "github_repository" "example" {
  name        = "terraform-repo"
  description = "My awesome codebase"

  visibility = "private"
}
