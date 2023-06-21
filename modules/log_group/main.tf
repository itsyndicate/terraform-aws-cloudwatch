resource "aws_cloudwatch_log_group" "this" {
  for_each = var.cloudwatch_log_groups

  name              = each.value.name
  skip_destroy      = lookup(each.value, "skip_destroy", null)
  retention_in_days = lookup(each.value, "retention_in_days", 7)
  kms_key_id        = lookup(each.value, "kms_key_id", null)

}
