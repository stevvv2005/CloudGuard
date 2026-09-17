variable "project_name" {
  description = "Project name used for Lambda resource naming."
  type        = string
}

variable "environment" {
  description = "Deployment environment."
  type        = string
}

variable "lambda_role_arn" {
  description = "ARN of the IAM role used by the Lambda function."
  type        = string
}

variable "dynamodb_table_name" {
  description = "Name of the DynamoDB table used by the Lambda function."
  type        = string
}

variable "source_file" {
  description = "Path to the Lambda Python source file."
  type        = string
}
