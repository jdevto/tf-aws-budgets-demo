# AWS Budgets for Savings Plans Coverage Monitoring
# This implements the AWS Well-Architected solution for monitoring
# Compute Savings Plans coverage across EC2, Fargate, and Lambda workloads.

# Daily budget for Compute Savings Plans coverage monitoring
resource "aws_budgets_budget" "sp_coverage_daily" {
  name              = "SavingsPlansCoverageDaily"
  budget_type       = "SAVINGS_PLANS_COVERAGE"
  limit_amount      = "100"
  limit_unit        = "PERCENTAGE"
  time_unit         = "DAILY"
  time_period_start = "2025-10-19_00:00"
  time_period_end   = "2030-10-19_00:00"

  # Alert when actual coverage falls below threshold
  notification {
    comparison_operator        = "LESS_THAN"
    threshold                  = var.coverage_threshold_percent
    threshold_type             = "PERCENTAGE"
    notification_type          = "ACTUAL"
    subscriber_email_addresses = var.alert_emails
  }

  tags = {
    Environment = "dev"
    Project     = "aws-budgets-savings-plans"
    ManagedBy   = "terraform"
  }
}
