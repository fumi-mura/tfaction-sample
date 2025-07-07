terraform {
  backend "s3" {
    bucket = "prd-fumis-pf-terraform-tfstate-s3-bucket"
    key    = "tfaction-sample/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
