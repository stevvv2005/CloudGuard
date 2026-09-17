output "api_endpoint" {
  description = "Public HTTP endpoint of the CloudGuard API."
  value       = aws_apigatewayv2_api.main.api_endpoint
}

output "api_id" {
  description = "ID of the CloudGuard HTTP API."
  value       = aws_apigatewayv2_api.main.id
}
