# tfmigrateの設定はこのファイルに記載するが、tfactionを使う場合はtfaction側で設定をしている
# ref: https://github.com/suzuki-shunsuke/tfaction/blob/main/tfmigrate-plan/tfmigrate.hcl
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
