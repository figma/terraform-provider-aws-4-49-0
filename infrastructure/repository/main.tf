terraform {
  backend "remote" {
    organization = "hashicorp-v2"

    workspaces {
      name = "terraform-provider-aws-repository"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.28.1"
    }
  }

  required_version = ">= 0.13.5"
}

provider "github" {
  owner = "hashicorp"
}
