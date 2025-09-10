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
| EKS Networking | 1 | https://github.com/apgaua/eks-networking | VPC structure to deploy EKS |
| This one | 2 | https://github.com/apgaua/eks-fullfargate | EKS with node groups and Fargate |