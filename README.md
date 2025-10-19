# AWS Budgets for Savings Plans Coverage Monitoring

This Terraform configuration implements the AWS Well-Architected solution for monitoring Compute Savings Plans coverage across EC2, Fargate, and Lambda workloads.

## What This Solves

Based on the AWS certification scenario, this solution provides:

- **Automated Monitoring**: Built-in AWS Budgets monitoring for Savings Plans coverage
- **Operational Efficiency**: Minimal overhead using managed AWS services
- **Cost Optimization**: Maximizes discounts through effective Savings Plans usage
- **Proactive Alerts**: Notifications when coverage drops below thresholds

## Quick Start

1. **Edit the configuration**

   ```bash
   # Update variables.tf with your email addresses
   vim variables.tf
   ```

2. **Initialize and apply**

   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

## Configuration

Edit `variables.tf` to customize:

- `coverage_threshold_percent`: Alert threshold (default: 95%)
- `alert_emails`: Email addresses for notifications

## What This Demo Does

This configuration creates an AWS Budget that monitors Compute Savings Plans coverage and demonstrates:

1. **Automated Monitoring**: Built-in AWS Budgets monitoring for Savings Plans coverage
2. **Operational Efficiency**: Managed service with minimal operational overhead
3. **Cost Optimization**: Maximizes discounts through effective Savings Plans usage
4. **Comprehensive Coverage**: Monitors EC2, Fargate, and Lambda workloads
5. **Proactive Alerts**: Actual coverage notifications when coverage drops below threshold

## What Gets Created

- **Daily Savings Plans Coverage Budget**: Monitors Compute Savings Plans coverage
- **Email Notifications**: Alerts when coverage falls below threshold (95% by default)
- **Tags**: Proper resource tagging for management (Environment: dev, Project: aws-budgets-savings-plans)

## Cleanup

```bash
terraform destroy
```

## Important Notes

- **Email Verification**: AWS requires email verification for budget notifications
- **Region**: Currently configured for `ap-southeast-2` (Sydney)
- **Costs**: AWS Budgets is free, but Savings Plans have associated costs
- **Budget Period**: Runs from 2025-10-19 to 2030-10-19 (5 years)
- **Coverage Logic**: Alerts when Savings Plans coverage drops below 95%
