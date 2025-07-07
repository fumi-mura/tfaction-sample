module "init" {
  source = "../../modules/init"
  iam_roles = {
    prd_plan_admin = {
      env            = "prd"
      exec           = "plan"
      policy         = "readonly"
      managed_policy = "ReadOnlyAccess"
    }
    prd_apply_admin = {
      env            = "prd"
      exec           = "apply"
      policy         = "admin"
      managed_policy = "AdministratorAccess"
    }
  }
}

module "test_cwlogs1" {
  source = "../../modules/cloudwatch/logs"
  cwlogs_name = "test-cwlogs1"
}
