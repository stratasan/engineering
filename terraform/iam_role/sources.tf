provider "aws" {
  region = "us-east-1"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}


terraform {
  backend "s3" {
    bucket = "com-stratasan-terraform"
    key    = "ops/iam/role/gh_engineering/terraform.tfstate"
    region = "us-east-1"
  }
}