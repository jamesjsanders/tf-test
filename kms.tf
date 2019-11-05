# KMS key used for encrypting S3
resource "aws_kms_key" "tf-test" {
  description = "KMS key used to encrypt data in S3"
}

