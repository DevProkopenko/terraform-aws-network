resource "aws_s3_bucket" "example" {
  bucket = var.bucket
}
resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = var.bucket
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
resource "aws_s3_bucket_versioning" "example" {
  bucket = var.bucket
  versioning_configuration {
    status = "Enabled"
  }
}
