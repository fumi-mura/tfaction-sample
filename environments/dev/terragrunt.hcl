locals {
  common_vars = yamldecode(file(find_in_parent_folders("common_vars.yaml")))
  env_vars    = yamldecode(file("env_vars.yaml"))

  region = local.common_vars.region
  name   = local.common_vars.name
  env    = local.env_vars.env
}

inputs = {
  region      = local.region
  Environment = local.env
  ServiceName = local.name
}

remote_state {
  backend = "s3"

  generate = {
    path      = "_backend.tf"
    if_exists = "overwrite_terragrunt"
  }

  config = {
    # Default versioning setting is enabled.
    # bucket               = "terragrunt-${local.env}-${local.name}-terraform-tfstate-s3-bucket"
    bucket               = "dev-fumis-pf-terraform-tfstate-s3-bucket"
    key                  = "${path_relative_to_include()}/terraform.tfstate"
    region               = local.region
    encrypt              = true
    bucket_sse_algorithm = "AES256"

    s3_bucket_tags = {
      "Environments"        = local.env
      "ServiceName"         = local.name
      "CreatedByTerragrunt" = "true"
    }
  }
}

generate "providers" {
  path      = "_providers.tf"
  if_exists = "overwrite_terragrunt"
  contents  = file("../../shared/providers.tf")
}

generate "terraform" {
  path      = "_terraform.tf"
  if_exists = "overwrite_terragrunt"
  contents  = file("../../shared/terraform.tf")
}

generate "variables" {
  path      = "_variables.tf"
  if_exists = "overwrite_terragrunt"
  contents  = file("../../shared/variables.tf")
}
