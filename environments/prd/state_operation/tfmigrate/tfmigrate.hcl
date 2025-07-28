# You can use mv, rm, import.
# tfmigrate.hclにstate変更後の状態を定義して、main.tf側もstate変更後の状態にしておく
migration "state" "test" {
  dir = "."
  actions = [
    # "mv aws_cloudwatch_log_group.from aws_cloudwatch_log_group.to",
    "mv aws_cloudwatch_log_group.foo1 aws_cloudwatch_log_group.foo2",
  ]
}
