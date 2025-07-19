plugin "terraform" {
  enabled = true
  preset  = "recommended"
}

plugin "aws" {
  source     = "github.com/terraform-linters/tflint-ruleset-aws"
  version    = "0.33.0"
  enabled    = true
  deep_check = true # If 'true' then need credentials.
}
