provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Environment        = var.Environment
      ServiceName        = var.ServiceName
      ManagedByTerraform = true
    }
  }
}
