terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0.1"
    }
  }
  backend "s3" {
    bucket = "terraform-tcc-state"
    key    = "tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}