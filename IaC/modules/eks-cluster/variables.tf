variable "name" {
  type        = string
  description = "Name of the EKS cluster to be deployed."
}
variable "kubernetes_version" {
  type        = string
  description = "EKS version to be deployed."
}
variable "vpc_id" {
  type        = string
  description = "VPC ID where the cluster will be deployed."
}
variable "subnets" {
  type        = list(string)
  description = "Subnets where the managed nodes will be deployed."
}
variable "tags" {
  type        = map(string)
  description = "EKS Cluster Tags"
}
