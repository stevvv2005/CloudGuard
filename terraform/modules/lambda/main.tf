locals {
  function_name = "${var.project_name}-${var.environment}-api"
}

data "archive_file" "lambda" {
  type        = "zip"
  source_file = var.source_file
  output_path = "${path.root}/cloudguard-lambda.zip"
}

resource "aws_cloudwatch_log_group" "lambda" {
  name              = "/aws/lambda/${local.function_name}"
  retention_in_days = 7
}

resource "aws_lambda_function" "main" {
  function_name = local.function_name
  role          = var.lambda_role_arn

  runtime = "python3.12"
  handler = "handler.lambda_handler"

  filename         = data.archive_file.lambda.output_path
  source_code_hash = data.archive_file.lambda.output_base64sha256

  memory_size = 128
  timeout     = 10

  environment {
    variables = {
      ENVIRONMENT         = var.environment
      DYNAMODB_TABLE_NAME = var.dynamodb_table_name
    }
  }

  depends_on = [
    aws_cloudwatch_log_group.lambda
  ]
}
