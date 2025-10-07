locals {
  values = read_terragrunt_config("values.hcl")
}
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
provider "helm" {
  kubernetes {
    host                   = module.eks-cluster.eks_cluster_endpoint
    cluster_ca_certificate = base64decode(module.eks-cluster.eks_cluster_certificate_authority_data.0.data)
    exec {
      api_version = "client.authentication.k8s.io/v1beta1"
      args        = ["eks", "get-token", "--cluster-name", module.eks-cluster.eks_cluster_name]
      command     = "aws"
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
  name               = local.values.locals.name
  kubernetes_version = local.values.locals.kubernetes_version
  vpc_id             = local.values.locals.vpc_id
  subnets            = local.values.locals.subnets
  tags               = local.values.locals.tags
}
