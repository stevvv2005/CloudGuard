
# CloudGuard

CloudGuard is a DevOps / Cloud AWS portfolio project focused on Infrastructure as Code, CI/CD, security, observability and FinOps.

## Architecture

The development architecture is serverless-first:

- AWS Lambda
- API Gateway HTTP API
- DynamoDB
- Amazon S3
- Amazon SQS
- Amazon SNS
- Amazon CloudWatch
- Terraform
- GitHub Actions

## Security

- Root account protected with MFA
- Dedicated IAM administrator for development
- AWS CLI uses authenticated temporary credentials
- Infrastructure managed through Terraform
- Security scanning will use Checkov, tfsec and Trivy

## FinOps

The AWS account has a strict maximum project budget of 100 USD.

Budget notifications are configured at:

- 10 USD
- 25 USD
- 50 USD
- 80 USD

Paid infrastructure such as ECS, EKS, EC2, RDS and NAT Gateway is reserved for the final demonstration phase only.

## Repository structure

```text
cloudguard/
├── .github/workflows/
├── app/
├── docs/
├── terraform/
│   ├── environments/
│   │   └── dev/
│   └── modules/
│       ├── api-gateway/
│       ├── dynamodb/
│       ├── iam/
│       └── lambda/
└── tests/