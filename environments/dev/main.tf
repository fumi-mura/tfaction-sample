module "init" {
  source = "../../modules/init"
  env    = local.env
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
  cwlogs_name = "test-2"
}
