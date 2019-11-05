terraform {
  backend "s3" {
    bucket         = "tf-remote-state-prorated"
    key            = "tf-test.tfstate"
    dynamodb_table = "terraform-state"
    region         = "us-east-1"
    profile        = "default"
  }
}
