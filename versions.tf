terraform {
  required_version = ">= 1.0.0"
  cloud {
    organization = "MyOrg_FileGateway"

    workspaces {
      name = "terraform-s3-deployment"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
