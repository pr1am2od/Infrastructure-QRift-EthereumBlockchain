terraform {

  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.7.0"
    }
  }
}

provider "aws" {

  default_tags {
    tags = {
      Environment = var.environment
      Terraform   = "true"
      Project     = var.project
      Unit        = "SCU"
      Context     = upper(var.project)
      Tenant      = "POOL"
    }
  }
  region = var.region
}
