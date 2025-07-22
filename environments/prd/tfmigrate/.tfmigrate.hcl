# tfmigrateの設定ファイルはtfaction側で持っている
# tfmigrate {
#   migration_dir = "./tfmigrate"
#   history {
#     storage "s3" {
#       bucket = "my-bucket"
#       key    = "tfmigrate-history.json"
#       region  = "ap-northeast-1"
#     }
#   }
# }

# You can use mv, rm, import.
# migration "state" "test" {
#   dir = "."
#   actions = [
#     "mv aws_security_group.foo aws_security_group.foo2",
#     "mv aws_security_group.bar aws_security_group.bar2",
#   ]
# }
