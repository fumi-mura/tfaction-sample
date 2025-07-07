resource "aws_cloudwatch_log_group" "this" {
  name              = var.cwlogs_name
  retention_in_days = var.retention_in_days
}
