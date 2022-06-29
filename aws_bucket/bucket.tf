resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
}
resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = var.bucket_name
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
resource "aws_s3_bucket_versioning" "example" {
  bucket = var.bucket_name
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_dynamodb_table" "bucket" {
  name         = var.bucket_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
