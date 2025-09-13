tfmigrate {
  migration_dir = "./state_operation/tfmigrate"
  history {
    storage "s3" {
      bucket = "dev-fumis-pf-terraform-tfstate-s3-bucket"
      key    = "tfaction-sample/tfmigrate/tfmigrate-history.json"
      region  = "ap-northeast-1"
    }
  }
}
