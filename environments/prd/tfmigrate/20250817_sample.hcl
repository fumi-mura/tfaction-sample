# You can use mv, rm, import.
# .hclファイルにstate変更を記載して、.tfファイルもstate変更後の状態にしておく
migration "state" "sample" {
  actions = [
    "mv aws_cloudwatch_log_group.foo1 aws_cloudwatch_log_group.foo2"
  ]
}
