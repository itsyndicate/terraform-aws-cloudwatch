output "cloudwatch_log_group_names" {
  description = "Names of Cloudwatch log groups"
  value = [
    for x in aws_cloudwatch_log_group.this : x.name
  ]
}

output "cloudwatch_log_group_arns" {
  description = "ARN of Cloudwatch log group"
  value = [
    for x in aws_cloudwatch_log_group.this : x.arn
  ]
}
