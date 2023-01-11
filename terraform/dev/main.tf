terraform {
  required_version = "1.1.7"

  backend "s3" {
    bucket         = "sscdevterraformstate"
    key            = "dev.tfstate"
    region         = "ca-central-1"
    dynamodb_table = "dynamodb_terraform_state_lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.57.0"
    }
  }
}
