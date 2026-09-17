variable "aws_region" {
  description = "AWS region for CloudGuard Terraform state infrastructure."
  type        = string
  default     = "us-east-1"
}

variable "state_bucket_name" {
  description = "Globally unique S3 bucket used for Terraform state."
  type        = string
}


