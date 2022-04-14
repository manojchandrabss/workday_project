resource "aws_iam_user" "users" {

  for_each = toset(var.iam_users)
  name     = each.value
}

resource "aws_iam_user_policy_attachment" "attach-policy" {

  for_each   = toset(var.iam_users)
  user       = aws_iam_user.users[each.key].name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
