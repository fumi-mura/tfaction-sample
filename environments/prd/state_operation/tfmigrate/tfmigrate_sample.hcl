# You can use mv, rm, import.
# .hclファイルにstate変更を記載して、.tfファイルもstate変更後の状態にしておく
# migration "state" "test" {
#   dir = "."
#   actions = [
#     "mv aws_cloudwatch_log_group.from1 aws_cloudwatch_log_group.to1",
#     "mv aws_cloudwatch_log_group.from2 aws_cloudwatch_log_group.to2"
#   ]
# }
