provider "aws" {
  region  = var.aws_region
  profile = "cloudguard"

  default_tags {
    tags = {
      Project     = "cloudguard"
      Environment = "bootstrap"
      ManagedBy   = "Terraform"
      Purpose     = "terraform-state"
    }
  }
}
