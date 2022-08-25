resource "aws_iam_role" "gh_engineering_repo" {
  name               = "gh_engineering_repo"
  assume_role_policy = data.aws_iam_policy_document.gh_engineering_repo_assume_role.json
}

resource "aws_iam_role_policy" "gh_engineering_repo" {
  name   = "gh_engineering_repo-policy"
  role   = aws_iam_role.gh_engineering_repo.id
  policy = data.aws_iam_policy_document.gh_engineering_repo_policy.json
}

data "aws_iam_policy_document" "gh_engineering_repo_policy" {
  statement {
    sid = 3
    actions = [
      "s3:*",
    ]
    resources = [
      "arn:aws:s3:::engineering.stratasan.com",
      "arn:aws:s3:::engineering.stratasan.com/*"
    ]
  }
}

data "aws_iam_policy_document" "gh_engineering_repo_assume_role" {
  statement {
    sid     = "assumerole"
    actions = ["sts:AssumeRoleWithWebIdentity"]
    principals {
      type        = "Federated"
      identifiers = ["arn:aws:iam::196656902399:oidc-provider/token.actions.githubusercontent.com"]
    }
    condition {
      test     = "StringLike"
      variable = "token.actions.githubusercontent.com:sub"
      values   = ["repo:stratasan/engineering:ref:refs/heads/*"]
    }
  }

}