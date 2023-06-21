variable "cloudwatch_log_groups" {
  description = "This example shows how to create CloudWatch Log groups dynamically"
  type        = any
  default = {
    one = {
      name              = "log-group-1"
      skip_destroy      = false
      retention_in_days = 7
    },
    two = {
      name              = "log-group-2"
      skip_destroy      = true
      retention_in_days = 30
    }
  }
}

