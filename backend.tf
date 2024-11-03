terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.72.1"
    }
  }

  backend "s3" {
    bucket = "reference-architecture-terraform-state"
    region = "us-east-2"
    encrypt = true
    dynamodb_table = "terraform_state_lock"
  }
}
