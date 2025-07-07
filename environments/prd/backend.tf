terraform {
  backend "s3" {
    bucket = "prd-tfaction-sample-terraform-tfstate-s3-bucket"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}
