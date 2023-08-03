# ---------------------------------------------------------------------------------------------------------------------
# This is an example of how to reference CloudWatch Log groups created in the |cloudwatch_log_groups| folder using Terragrunt
# ---------------------------------------------------------------------------------------------------------------------

# Your Terragrunt configuration...

dependency "cloudwatch_log_groups" {
  config_path = "../cloudwatch_log_groups"
}

inputs = {
  # Your Terragrunt configuration...

  application_logs_cw_log_group_arn = "${dependency.cloudwatch_log_groups.outputs.cloudwatch_log_group_arns[0]}"
  index_logs_cw_log_group_arn       = "${dependency.cloudwatch_log_groups.outputs.cloudwatch_log_group_arns[1]}"
  search_logs_cw_log_group_arn      = "${dependency.cloudwatch_log_groups.outputs.cloudwatch_log_group_arns[2]}" 

  # Your Terragrunt configuration...
}
