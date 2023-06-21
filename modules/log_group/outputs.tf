output "cloudwatch_log_group_names" {
  description = "Names of CloudWatch Log groups"
  value = [
    for x in aws_cloudwatch_log_group.this : x.name
  ]
}

output "cloudwatch_log_group_arns" {
  description = "ARNs of CloudWatch Log groups"
  value = [
    for x in aws_cloudwatch_log_group.this : x.arn
  ]
}
