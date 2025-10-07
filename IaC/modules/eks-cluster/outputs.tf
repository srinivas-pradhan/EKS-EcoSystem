output "eks_cluster_endpoint" {
  value       = module.eks_al2023.cluster_endpoint
  description = "EKS Cluster Endpoint"
}
output "eks_cluster_certificate_authority_data" {
  value       = module.eks_al2023.cluster_certificate_authority_data
  description = "EKS Cluster Certificate Authority Data"
}
output "eks_cluster_name" {
  value       = module.eks_al2023.cluster_name
  description = "EKS Cluster Name"
}
