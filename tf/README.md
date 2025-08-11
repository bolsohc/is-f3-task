# Form3 Platform Interview - Ignacio Spinosa

This TF code deploys multiple containers for prod, dev and staging environments

Each environment has its own Vault backend for its secrets management

I've splitted the code, originally in main.tf in different config files for easy management and maintenance

## Structure

- `provider.tf`: Defines Vault providers for each environment
- `vault.tf`: Contains all resources related to Vault per environment
- `containers.tf`: Deploys Docker containers 
- `locals.tf`: Contains common settings used in the different environments
- `variables.tf` & `secrets.tfvars`: Secrets and Vault tokens

## Running Terraform

To apply infrastructure for a specific environment:

```bash
terraform apply -var-file=secrets.tfvars -var="environment=<ENV>"

i.e 

terraform apply -var-file=secrets.tfvars -var="environment=staging"
```

## Improvements that could be done

If the size of the infrastructure grows exponentially would be a good idea to split the containers .tf files into containers_(prod|dev|staging).tf for isolation of the env config files.

## Observations

I have modified docker-compose.yml so the new 'staging' network could be created

I have also modified the terraform apply command inside the run.sh script to use the secrets.tfvars file.



<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.7 |
| <a name="requirement_docker"></a> [docker](#requirement\_docker) | 2.15.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | 3.0.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_docker"></a> [docker](#provider\_docker) | 2.15.0 |
| <a name="provider_vault.vault_dev"></a> [vault.vault\_dev](#provider\_vault.vault\_dev) | 3.0.1 |
| <a name="provider_vault.vault_prod"></a> [vault.vault\_prod](#provider\_vault.vault\_prod) | 3.0.1 |
| <a name="provider_vault.vault_staging"></a> [vault.vault\_staging](#provider\_vault.vault\_staging) | 3.0.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [docker_container.account_development](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/container) | resource |
| [docker_container.account_production](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/container) | resource |
| [docker_container.account_staging](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/container) | resource |
| [docker_container.frontend_development](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/container) | resource |
| [docker_container.frontend_production](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/container) | resource |
| [docker_container.frontend_staging](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/container) | resource |
| [docker_container.gateway_development](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/container) | resource |
| [docker_container.gateway_production](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/container) | resource |
| [docker_container.gateway_staging](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/container) | resource |
| [docker_container.payment_development](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/container) | resource |
| [docker_container.payment_production](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/container) | resource |
| [docker_container.payment_staging](https://registry.terraform.io/providers/kreuzwerker/docker/2.15.0/docs/resources/container) | resource |
| [vault_generic_secret.account_development](https://registry.terraform.io/providers/hashicorp/vault/3.0.1/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.account_production](https://registry.terraform.io/providers/hashicorp/vault/3.0.1/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.account_staging](https://registry.terraform.io/providers/hashicorp/vault/3.0.1/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.gateway_development](https://registry.terraform.io/providers/hashicorp/vault/3.0.1/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.gateway_production](https://registry.terraform.io/providers/hashicorp/vault/3.0.1/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.gateway_staging](https://registry.terraform.io/providers/hashicorp/vault/3.0.1/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.payment_development](https://registry.terraform.io/providers/hashicorp/vault/3.0.1/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.payment_production](https://registry.terraform.io/providers/hashicorp/vault/3.0.1/docs/data-sources/generic_secret) | data source |
| [vault_generic_secret.payment_staging](https://registry.terraform.io/providers/hashicorp/vault/3.0.1/docs/data-sources/generic_secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vault_dev_address"></a> [vault\_dev\_address](#input\_vault\_dev\_address) | Vault dev server address | `string` | n/a | yes |
| <a name="input_vault_dev_token"></a> [vault\_dev\_token](#input\_vault\_dev\_token) | Vault dev token | `string` | n/a | yes |
| <a name="input_vault_prod_address"></a> [vault\_prod\_address](#input\_vault\_prod\_address) | Vault production server address | `string` | n/a | yes |
| <a name="input_vault_prod_token"></a> [vault\_prod\_token](#input\_vault\_prod\_token) | Vault production token | `string` | n/a | yes |
| <a name="input_vault_staging_address"></a> [vault\_staging\_address](#input\_vault\_staging\_address) | Vault staging server address | `string` | n/a | yes |
| <a name="input_vault_staging_token"></a> [vault\_staging\_token](#input\_vault\_staging\_token) | Vault staging token | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
