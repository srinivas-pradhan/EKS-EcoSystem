module "eks-cluster" {
  source    = "./modules/eks-cluster"
  name    = var.name
  kubernetes_version = var.kubernetes_version
  vpc_id   = var.vpc_id
  subnets     = var.subnets
  tags = var.tags
}
