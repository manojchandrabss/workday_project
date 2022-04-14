variable "iam_users" {
  description = "IAM users to be created"
  type        = list(string)
  default     = ["emma", "liam"]
}

variable "vpc-names" {

  description = "creating 2 vpc's"
  type        = list(string)
  default     = ["fake-product-production", "Fake-product-staging"]

}

variable "vpc-cidr" {

  description = "cidr range for 2 vpc's"
  type        = list(any)
  default     = ["10.0.0.0/16", "192.168.0.0/16"]

}
