
resource "aws_s3_bucket" "mys3" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
  }
}

# Ownership controls (recommended)
resource "aws_s3_bucket_ownership_controls" "ownership" {
  bucket = aws_s3_bucket.mys3.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

# Public access block (recommended)
resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket                  = aws_s3_bucket.mys3.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Versioning
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.mys3.id

  versioning_configuration {
    status = var.versioning_enabled ? "Enabled" : "Suspended"
  }
}
