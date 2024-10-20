terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.72.1"
    }
  }

  backend "s3" {
    bucket = "aws-ref-architect"
    region - "us-east-2"
    encrypt = true
    dynamo_table = "terraform_state_lock"
  }
}

provider "aws" {
  region = "us-east-2"
}
