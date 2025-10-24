data "aws_iam_policy_document" "sample" {
  statement {
    effect = "Allow"
    actions = [
      "s3:Get*",
    ]
    resources = ["*"]
  }
}

resource "aws_iam_policy" "sample" {
  name   = "terragrunt-sample-policy"
  policy = data.aws_iam_policy_document.sample.json
}

resource "aws_iam_role_policy_attachment" "sample" {
  role       = var.iam_role_name
  policy_arn = aws_iam_policy.sample.arn
}
