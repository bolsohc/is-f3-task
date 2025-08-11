provider "vault" {
  alias   = "vault_dev"
  address = var.vault_dev_address
  token   = var.vault_dev_token
}

provider "vault" {
  alias   = "vault_prod"
  address = var.vault_prod_address
  token   = var.vault_prod_token
}
provider "vault" {
  alias   = "vault_staging"
  address = var.vault_staging_address
  token   = var.vault_staging_token
}