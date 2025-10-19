# AWS Budgets Outputs

output "budget_id" {
  description = "ID of the Savings Plans coverage budget"
  value       = aws_budgets_budget.sp_coverage_daily.id
}

output "budget_name" {
  description = "Name of the Savings Plans coverage budget"
  value       = aws_budgets_budget.sp_coverage_daily.name
}

output "alert_emails" {
  description = "Email addresses configured for budget alerts"
  value       = var.alert_emails
}

output "coverage_threshold" {
  description = "Coverage threshold percentage for Savings Plans monitoring"
  value       = "${var.coverage_threshold_percent}%"
}

output "aws_console_budgets_url" {
  description = "Direct link to AWS Budgets console"
  value       = "https://console.aws.amazon.com/billing/home#/budgets"
}
