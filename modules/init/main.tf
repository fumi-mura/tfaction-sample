data "aws_iam_policy_document" "assume_role" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRoleWithWebIdentity"]

    principals {
      type        = "Federated"
      identifiers = ["arn:aws:iam::644370126241:oidc-provider/token.actions.githubusercontent.com"]
    }

    condition {
      test     = "StringEquals"
      variable = "token.actions.githubusercontent.com:sub"
      values   = ["repo:tfaction-sample:ref:refs/heads/main"]
    }
  }
}

resource "aws_iam_role" "this" {
  for_each = var.iam_roles

  name               = "${each.value.env}-iam-role-terraform-${each.value.exec}-${each.value.policy}"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

resource "aws_iam_role_policy_attachment" "this" {
  for_each = var.iam_roles

  role       = aws_iam_role.this[each.key].name
  policy_arn = "arn:aws:iam::aws:policy/${each.value.managed_policy}"
}
