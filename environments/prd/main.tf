module "init" {
  source = "../../modules/init"
  env    = local.env
  iam_roles = {
    prd_plan_admin = {
      exec           = "plan"
      policy         = "readonly"
      managed_policy = "ReadOnlyAccess"
    }
    prd_apply_admin = {
      exec           = "apply"
      policy         = "admin"
      managed_policy = "AdministratorAccess"
    }
  }
}

module "test_cwlogs1" {
  source      = "../../modules/cloudwatch/logs"
  cwlogs_name = "test-cwlogs1"
}

# module "test_cwlogs2" {
#   source = "../../modules/cloudwatch/logs"
#   cwlogs_name = "test-cwlogs2"
# }

resource "aws_cloudwatch_log_group" "foo2" {
  name = "foo"
}

import {
  id = "test-cwlogs2"
  to = aws_cloudwatch_log_group.test3
}

# resource "aws_cloudwatch_log_group" "test3" {
#   name = "foo"
# }

resource "aws_cloudwatch_log_group" "test3" {
  kms_key_id        = null
  log_group_class   = "STANDARD"
  name              = "test-cwlogs2"
  name_prefix       = null
  region            = "ap-northeast-1"
  retention_in_days = 30
  skip_destroy      = false
  tags              = {}
  tags_all = {
    Env                = "prd"
    ManagedByTerraform = "true"
  }
}
