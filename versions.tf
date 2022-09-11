terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"

    }
    random = {
      source = "hashicorp/random"

    }
  }
  required_version = ">= 1.1.0"



  backend "s3" {
    bucket               = "gkranasinghe-tfstate"
    key                  = "terraform.tfstate"
    workspace_key_prefix = "demo-"
    region               = "us-east-1"
    dynamodb_table       = "terraform-state-lock"
    encrypt              = true
  }



}
