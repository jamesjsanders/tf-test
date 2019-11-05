# Testing Terraform with CircleCI

## Goal

Create a simple s3 bucket in AWS 

## CircleCi Runner

Attempting to utilize Hashi Corps Terraform image
* hashicorp/terraform:0.12.13

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| tags | Set of tags for provisioned resources | map | `{ "Product": "tf-testing", "Repo": "tf-test", "Terraform": "true" }` | no |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
