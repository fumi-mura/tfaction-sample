terraform {
  required_version = "1.13.4"

  required_providers {
    aws = {
      version = "6.2.0"
      source  = "hashicorp/aws"
    }
  }
}
