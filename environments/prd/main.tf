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

# module "test_cwlogs1" {
#   source      = "../../modules/cloudwatch/logs"
#   cwlogs_name = "test-cwlogs1"
# }

# module "test_cwlogs2" {
#   source = "../../modules/cloudwatch/logs"
#   cwlogs_name = "test-cwlogs2"
# }

# resource "aws_cloudwatch_log_group" "test_cwlogs1" {
#   name = "test-cwlogs1"
# }

import {
  id = "test-cwlogs1"
  to = aws_cloudwatch_log_group.test_cwlogs1
}
