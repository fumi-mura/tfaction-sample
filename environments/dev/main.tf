data "aws_caller_identity" "current" {}

module "init" {
  source     = "../../modules/init"
  env        = local.env
  account_id = data.aws_caller_identity.current.account_id
  iam_roles = {
    plan_admin = {
      exec           = "plan"
      policy         = "readonly"
      managed_policy = "ReadOnlyAccess"
    }
    apply_admin = {
      exec           = "apply"
      policy         = "admin"
      managed_policy = "AdministratorAccess"
    }
  }
}

module "cwlogs1" {
  source      = "../../modules/cloudwatch/logs"
  cwlogs_name = "test1"
}

module "cwlogs2" {
  source      = "../../modules/cloudwatch/logs"
  cwlogs_name = "test2"
}
