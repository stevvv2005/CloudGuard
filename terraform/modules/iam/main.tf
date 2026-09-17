resource "aws_iam_role" "lambda_execution" {
  name = "${var.project_name}-${var.environment}-lambda-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Service = "lambda.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_policy" "lambda_permissions" {
  name = "${var.project_name}-${var.environment}-lambda-policy"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = concat(
      [
        {
          Sid    = "CloudWatchLogs"
          Effect = "Allow"

          Action = [
            "logs:CreateLogGroup",
            "logs:CreateLogStream",
            "logs:PutLogEvents"
          ]

          Resource = "*"
        }
      ],

      var.dynamodb_table_arn != null ? [
        {
          Sid    = "DynamoDBAccess"
          Effect = "Allow"

          Action = [
            "dynamodb:GetItem",
            "dynamodb:PutItem",
            "dynamodb:UpdateItem",
            "dynamodb:DeleteItem",
            "dynamodb:Query"
          ]

          Resource = var.dynamodb_table_arn
        }
      ] : [],

      var.sqs_queue_arn != null ? [
        {
          Sid    = "SQSAccess"
          Effect = "Allow"

          Action = [
            "sqs:SendMessage",
            "sqs:ReceiveMessage",
            "sqs:DeleteMessage",
            "sqs:GetQueueAttributes"
          ]

          Resource = var.sqs_queue_arn
        }
      ] : []
    )
  })
}

resource "aws_iam_role_policy_attachment" "lambda_permissions" {
  role       = aws_iam_role.lambda_execution.name
  policy_arn = aws_iam_policy.lambda_permissions.arn
}
