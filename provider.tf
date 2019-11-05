provider "aws" {
  profile = local.aws_profile
  region  = local.aws_region

  assume_role {
    role_arn = local.aws_role_arn
  }
}

data "aws_caller_identity" "current" {
}

