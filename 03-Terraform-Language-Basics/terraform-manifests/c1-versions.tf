# Terraform Settings Block
terraform {
  required_version = ">= 1.8.5"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 5.33.0"
    }
  }
}

# Terraform Provider Block
provider "google" {
  project = "project-bde3d8d6-f5a0-49e5-964" # PROJECT_ID
  region = "us-central1"
}

