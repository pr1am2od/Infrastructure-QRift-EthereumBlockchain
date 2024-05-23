# AWS ECR

This module provides Terraform configurations to create an ECR registry.

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
| [aws_ecr_repository](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |


## Inputs

| Name | Description                                         | Type | Default | Required |
|------|-----------------------------------------------------|------|---------|:--------:|
| <a name="repository_name"></a> [repository_name](#repository_name) | Name of the ECR Repo.                               | `string` | n/a | yes |
| <a name="image_tag_mutability"></a> [image_tag_mutability](#image_tag_mutability) | you have to choose either its MUTABLE OR IMMUTABLE. | `string` | n/a | yes |


## Outputs

| Name | Description              |
|------|--------------------------|
| <a name="repository_url"></a> [repository_url](#repository_url) | The URL of the registry. |
