terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "ravi-126"
    region         = "us-west-2"
    key            = "eks/terraform.tfstate"
  }
}

provider "aws" {
  region  = var.aws-region
}
