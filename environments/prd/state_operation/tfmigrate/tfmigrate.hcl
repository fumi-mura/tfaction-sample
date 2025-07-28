# You can use mv, rm, import.
# tfmigrate.hclにstate変更後の状態を定義して、main.tf側もstate変更後の状態にしておく
migration "state" "test" {
  dir = "."
  actions = [
    "mv aws_cloudwatch_log_group.foo1 aws_cloudwatch_log_group.foo2",
    # "mv aws_cloudwatch_log_group.bar1 aws_cloudwatch_log_group.bar2",
  ]
}
