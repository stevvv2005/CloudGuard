variable "aws_region" {
  description = "AWS region used by the CloudGuard development environment."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used to identify CloudGuard resources."
  type        = string
  default     = "cloudguard"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "dev"
}
