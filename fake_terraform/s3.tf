resource "aws_s3_bucket" "s3_bucket_fake" {
  bucket = "fake-product-assets"

}

resource "aws_s3_bucket_acl" "s3_fake_acl" {
  bucket = aws_s3_bucket.s3_bucket_fake.id
  acl    = "private"
}
