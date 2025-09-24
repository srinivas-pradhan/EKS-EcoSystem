locals {
    values = read_terragrunt_config("values.hcl")
}
generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
EOF
}

generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
terraform {
  backend "s3" {
    bucket         = "gh-actions-eks-ecosystem"
    key            = "IaC/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "state-table"
  }
}
EOF
}

inputs = {

}
