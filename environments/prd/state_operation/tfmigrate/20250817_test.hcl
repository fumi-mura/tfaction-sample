migration "state" "test" {
  actions = [
    "mv aws_cloudwatch_log_group.foo1 aws_cloudwatch_log_group.foo2",
  ]
}
