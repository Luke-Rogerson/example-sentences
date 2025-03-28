terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {}
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      environment = var.environment
      managed_by  = "terraform"
      project     = var.project_name
      region      = var.aws_region
    }
  }
}
