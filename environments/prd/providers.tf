provider "aws" {
  default_tags {
    tags = {
      Env                = local.env
      ManagedByTerraform = true
    }
  }
}
