plugin "terraform" {
  enabled = true
  preset  = "recommended"
}

plugin "aws" {
  source     = "github.com/terraform-linters/tflint-ruleset-aws"
  version    = "0.33.0"
  enabled    = true
  deep_check = false # If 'true' then need credentials.
}

rule  "terraform_required_providers" {
  enabled = false
}

rule  "terraform_required_version" {
  enabled = false
}
