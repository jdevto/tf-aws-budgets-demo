
# AWS Budgets Variables - Direct Use Example
# Edit these values directly in the file for your use case

variable "coverage_threshold_percent" {
  description = "Notify when Savings Plans coverage falls below this percent"
  type        = number
  default     = 95
}

variable "alert_emails" {
  description = "Email recipients for AWS Budgets alerts"
  type        = list(string)
  default     = ["finops@example.com"]
}
