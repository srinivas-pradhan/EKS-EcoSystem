<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks_al2023"></a> [eks\_al2023](#module\_eks\_al2023) | terraform-aws-modules/eks/aws | ~> 21.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | EKS version to be deployed. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the EKS cluster to be deployed. | `string` | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | Subnets where the managed nodes will be deployed. | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | EKS Cluster Tags | `map(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID where the cluster will be deployed. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eks_cluster_certificate_authority_data"></a> [eks\_cluster\_certificate\_authority\_data](#output\_eks\_cluster\_certificate\_authority\_data) | EKS Cluster Certificate Authority Data |
| <a name="output_eks_cluster_endpoint"></a> [eks\_cluster\_endpoint](#output\_eks\_cluster\_endpoint) | EKS Cluster Endpoint |
| <a name="output_eks_cluster_name"></a> [eks\_cluster\_name](#output\_eks\_cluster\_name) | EKS Cluster Name |
<!-- END_TF_DOCS -->