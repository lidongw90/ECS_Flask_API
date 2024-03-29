terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.15.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.1"
    }
  }

backend "remote" {
		hostname = "app.terraform.io"
		organization = "linvest21-auto-ecs"

		workspaces {
			name = "automation-ecs"
		}
	}
}

provider "aws" {
  region = "us-west-2"
}