variable "tags" {
  description = "Set of tags for provisioned resources"
  type        = "map"

  default = {
    Product   = "tf-testing"
    Repo      = "tf-test"
    Terraform = "true"
  }
}

locals {
  env_variables = {
    default = {}
    dev = {
      aws_profile  = "default"
      aws_region   = "us-east-1"
      aws_role_arn = "arn:aws:iam::####:role/Orchestration"
      domain_name  = "dev.15five.com"
    }
    stage = {
      aws_profile  = "default"
      aws_region   = "us-east-1"
      aws_role_arn = "arn:aws:iam::####:role/Orchestration"
      domain_name  = "stage.15five.com"
    }
    prod = {
      aws_profile  = "default"
      aws_region   = "us-east-1"
      aws_role_arn = "arn:aws:iam::####:role/Orchestration"
      domain_name  = "prod.15five.com"
    }
  }

  aws_profile  = local.env_variables[terraform.workspace]["aws_profile"]
  aws_region   = local.env_variables[terraform.workspace]["aws_region"]
  aws_role_arn = local.env_variables[terraform.workspace]["aws_role_arn"]
  domain_name  = local.env_variables[terraform.workspace]["domain_name"]
}

