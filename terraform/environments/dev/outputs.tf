output "lambda_role_arn" {
  description = "ARN of the CloudGuard Lambda execution role."
  value       = module.iam.lambda_role_arn
}

output "lambda_policy_arn" {
  description = "ARN of the CloudGuard Lambda IAM policy."
  value       = module.iam.lambda_policy_arn
}
output "dynamodb_table_name" {
  description = "Name of the CloudGuard DynamoDB table."
  value       = module.dynamodb.table_name
}

output "dynamodb_table_arn" {
  description = "ARN of the CloudGuard DynamoDB table."
  value       = module.dynamodb.table_arn
}
output "api_endpoint" {
  description = "Public endpoint of the CloudGuard HTTP API."
  value       = module.api_gateway.api_endpoint
}