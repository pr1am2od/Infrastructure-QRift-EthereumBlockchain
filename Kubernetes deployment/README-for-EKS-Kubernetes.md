# AWS EKS

This module provides Terraform configurations to create an EKS cluster and its associated roles in AWS.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) | resource |
| [aws_eks_node_group.worker_node_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_iam_role.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.worker_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly-EKS](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.AmazonEKSClusterPolicy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.AmazonEKSVPCResourceController](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.EC2InstanceProfileForImageBuilderECRContainerBuilds](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the EKS cluster to be deployed. | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment type. E.g. prod, dev, qa, staging. | `string` | n/a | yes |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | EC2 instance type for EKS worker nodes. | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Name of the project. | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of subnet IDs. | `list(string)` | n/a | yes |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | CIDR of the VPC to deploy the EKS cluster in. | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC to deploy the EKS cluster in. | `string` | n/a | yes |
| <a name="input_worker_desired_size"></a> [worker\_desired\_size](#input\_worker\_desired\_size) | Minimum number of worker nodes. | `string` | n/a | yes |
| <a name="input_worker_max_size"></a> [worker\_max\_size](#input\_worker\_max\_size) | Maximum number of worker nodes. | `string` | n/a | yes |
| <a name="input_worker_min_size"></a> [worker\_min\_size](#input\_worker\_min\_size) | Desired number of worker nodes. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_arn"></a> [cluster\_arn](#output\_cluster\_arn) | The ARN of the EKS cluster. |
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | The endpoint for the Kubernetes API server. |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | The name or identifier of the EKS cluster. |
| <a name="output_eks_cluster_role_arn"></a> [eks\_cluster\_role\_arn](#output\_eks\_cluster\_role\_arn) | The ARN of the IAM role used by the EKS cluster control plane. |
| <a name="output_node_group_arn"></a> [node\_group\_arn](#output\_node\_group\_arn) | The ARN of the Node Group. |
| <a name="output_node_group_name"></a> [node\_group\_name](#output\_node\_group\_name) | The name of the Node Group. |
| <a name="output_worker_role_arn"></a> [worker\_role\_arn](#output\_worker\_role\_arn) | The ARN of the IAM role assumed by worker nodes. |
