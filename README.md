
# EKS Course repository

## Commands

| Terraform | Description |
|--------------------|-------------|
| terraform fmt --recursive | Format terraform files |
| terraform init -backend-config=environment/dev/backend.tfvars | Init terraform backend config|
| terraform validate | Validate terraform workflow |
| terraform apply -auto-approve -var-file=environment/dev/terraform.tfvars | Create structure |
| terraform destroy -auto-approve -var-file=environment/dev/terraform.tfvars | Destroy structure |

## Structure
![Estrutura terraform](diagrama.png)

## Repository dependency
| Project | Priority | URL | Description |
|---------|----------|-----|-------------|
| This one | 1 | https://github.com/apgaua/eks-networking | VPC structure to deploy EKS |
| EKS Vanilla | 2 | https://github.com/apgaua/eks-vanilla | EKS Basic deployment |

<!-- NAO PREENCHA ABAIXO DESTA LINHA-->
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_network"></a> [network](#module\_network) | github.com/apgaua/terraform-modules//networking-module | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_database_nacl_rules"></a> [database\_nacl\_rules](#input\_database\_nacl\_rules) | ACL rule to database subnet | `list(map(string))` | n/a | yes |
| <a name="input_databasesubnets"></a> [databasesubnets](#input\_databasesubnets) | Database subnet values | `list(string)` | n/a | yes |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | Default tags to be set in resources | `map(string)` | n/a | yes |
| <a name="input_podsubnets"></a> [podsubnets](#input\_podsubnets) | POD subnet values | `list(string)` | n/a | yes |
| <a name="input_privatesubnets"></a> [privatesubnets](#input\_privatesubnets) | Private subnet values | `list(string)` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | n/a | `string` | n/a | yes |
| <a name="input_publicsubnets"></a> [publicsubnets](#input\_publicsubnets) | Public subnet values | `list(string)` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | n/a | yes |
| <a name="input_vpc_additional_cidrs"></a> [vpc\_additional\_cidrs](#input\_vpc\_additional\_cidrs) | Additional VPC CIDRs | `list(string)` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_database_subnets"></a> [database\_subnets](#output\_database\_subnets) | SSM Parameters about database subnets id |
| <a name="output_pod_subnets"></a> [pod\_subnets](#output\_pod\_subnets) | SSM Parameters about POD subnets id |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | SSM Parameters about private subnets id |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | SSM Parameters about public subnets id |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
<!-- END_TF_DOCS -->
