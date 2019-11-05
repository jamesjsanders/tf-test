# S3 bucket
resource "aws_s3_bucket" "tf-test" {
  bucket = "tf-test-${terraform.workspace}"
  acl    = "private"
  tags   = merge(var.tags)

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.tf-test.key_id
        sse_algorithm     = "aws:kms"
      }
    }
  }
}

