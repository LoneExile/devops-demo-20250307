# devops-demo-20250307

## 1. IaC
### 1.1. Terraform
- [Terraform](https://www.terraform.io/)
- [Terraform AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

<!-- req -->
### 1.2. Requirements
- [AWS CLI](https://aws.amazon.com/cli/)
- [Terraform](https://www.terraform.io/downloads.html)

### 1.3. Setup
- [AWS CLI Configuration](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html)
- AWS Key Pair

```
cd terraform
terraform init
terraform plan
terraform apply
```

2. Chart

```sh
## add repo
helm repo add devops https://loneexile.github.io/devops-demo-20250307
helm repo update

## example installation
helm install backend-demo devops/backend-demo

## example installation with custom values
helm install backend-demo devops/backend-demo -f custom-values.yaml

## remove installation
helm uninstall backend-demo

## remove repo
helm repo remove devops
```

---
