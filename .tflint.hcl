config {
  call_module_type = "all"
}

plugin "terraform" {
  enabled = true
  preset  = "recommended"
}

plugin "aws" {
  enabled    = true
  deep_check = false # if 'true' then need credentials.
  version    = "0.33.0"
  source     = "github.com/terraform-linters/tflint-ruleset-aws"
}

rule  "terraform_required_providers" {
  enabled = false
}

rule  "terraform_required_version" {
  enabled = false
}
