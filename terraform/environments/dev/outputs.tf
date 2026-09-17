output "lambda_role_arn" {
  description = "ARN of the CloudGuard Lambda execution role."
  value       = module.iam.lambda_role_arn
}

output "lambda_policy_arn" {
  description = "ARN of the CloudGuard Lambda IAM policy."
  value       = module.iam.lambda_policy_arn
}