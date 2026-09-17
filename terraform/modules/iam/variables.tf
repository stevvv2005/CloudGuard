variable "project_name" {
  description = "Project name used for IAM resource naming."
  type        = string
}

variable "environment" {
  description = "Environment name."
  type        = string
}

variable "dynamodb_table_arn" {
  description = "ARN of the DynamoDB table the Lambda function can access."
  type        = string
  default     = null
}

variable "sqs_queue_arn" {
  description = "ARN of the SQS queue the Lambda function can use."
  type        = string
  default     = null
}
