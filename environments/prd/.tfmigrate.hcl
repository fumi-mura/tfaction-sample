tfmigrate {
  migration_dir = "./tfmigrate"
  history {
    storage "s3" {
      bucket = "prd-fumis-pf-terraform-tfstate-s3-bucket"
      key    = "tfaction-sample/tfmigrate/tfmigrate-history.json"
      region  = "ap-northeast-1"
    }
  }
}
