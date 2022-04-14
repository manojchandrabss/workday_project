resource "aws_iam_user" "users" {

  for_each = toset(var.iam_users)
  name     = each.value
}

resource "aws_iam_user_policy_attachment" "attach-policy" {

  for_each   = toset(var.iam_users)
  user       = aws_iam_user.users[each.key].name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_iam_user" "s3-user" {

  name = "fake-product"
}

resource "aws_iam_policy" "user-s3-policy" {
  name        = "fake-product-policy"
  description = "policy fo user to access s3 bucket"

  policy = <<POLICY
{
  "Id": "Policy1649912567111",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1649912541351",
      "Action": [
        "s3:Get*",
        "s3:Create*",
        "s3:Describe*",
        "s3:Delete*"
       ],
      "Effect": "Allow",
      "Resource": "${aws_s3_bucket.s3_bucket_fake.arn}"
    }
  ]
}
POLICY
}

resource "aws_iam_user_policy_attachment" "user-s3-policy-attach" {
  user       = aws_iam_user.s3-user.name
  policy_arn = aws_iam_policy.user-s3-policy.arn
}
