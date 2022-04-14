variable "iam_users" {
  description = "IAM users to be created"
  type        = list(string)
  default     = ["emma", "liam"]
}
