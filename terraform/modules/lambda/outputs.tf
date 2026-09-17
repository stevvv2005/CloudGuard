output "function_name" {
  description = "Name of the CloudGuard Lambda function."
  value       = aws_lambda_function.main.function_name
}

output "function_arn" {
  description = "ARN of the CloudGuard Lambda function."
  value       = aws_lambda_function.main.arn
}

output "invoke_arn" {
  description = "Invoke ARN of the CloudGuard Lambda function."
  value       = aws_lambda_function.main.invoke_arn
}
