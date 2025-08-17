migration "state" "test" {
  dir = "."
  actions = [
    "mv aws_cloudwatch_log_group.foo1 aws_cloudwatch_log_group.foo2"
  ]
}
