provider "aws" {
  region              = "ca-central-1"
  allowed_account_ids = [var.allowed_account_id]

  default_tags {
    tags = {
      Environment = "dev"
      ManagedBy   = "terraform"
      Repo        = "https://github.com/yxa006/Testing_CICD"
    }
  }
}
