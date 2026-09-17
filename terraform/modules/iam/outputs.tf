output "lambda_role_arn" {
  description = "ARN of the Lambda execution role."
  value       = aws_iam_role.lambda_execution.arn
}

output "lambda_policy_arn" {
  description = "ARN of the custom Lambda permissions policy."
  value       = aws_iam_policy.lambda_permissions.arn
}
