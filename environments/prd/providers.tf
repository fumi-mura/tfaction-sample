provider "aws" {
  default_tags {
    tags = {
      Environment        = local.env
      ManagedByTerraform = true
    }
  }
}
