import json
import os


def lambda_handler(event, context):
    table_name = os.environ.get("DYNAMODB_TABLE_NAME", "not-configured")

    response_body = {
        "message": "CloudGuard Lambda is running",
        "service": "cloudguard-api",
        "environment": os.environ.get("ENVIRONMENT", "unknown"),
        "dynamodb_table": table_name,
    }

    return {
        "statusCode": 200,
        "headers": {
            "Content-Type": "application/json"
        },
        "body": json.dumps(response_body),
    }
