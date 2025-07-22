# You can use mv, rm, import.
migration "state" "test" {
  dir = "."
  actions = [
    "mv aws_cloudwatch_log_group.foo1 aws_cloudwatch_log_group.foo2",
    # "mv aws_cloudwatch_log_group.bar1 aws_cloudwatch_log_group.bar2",
  ]
}
