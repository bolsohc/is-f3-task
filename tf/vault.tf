data "vault_generic_secret" "account_development" {
  provider = vault.vault_dev
  path     = "secret/development/account"
}

data "vault_generic_secret" "gateway_development" {
  provider = vault.vault_dev
  path     = "secret/development/gateway"
}

data "vault_generic_secret" "payment_development" {
  provider = vault.vault_dev
  path     = "secret/development/payment"
}

data "vault_generic_secret" "account_staging" {
  provider = vault.vault_staging
  path     = "secret/staging/account"
}

data "vault_generic_secret" "gateway_staging" {
  provider = vault.vault_staging
  path     = "secret/staging/gateway"
}

data "vault_generic_secret" "payment_staging" {
  provider = vault.vault_staging
  path     = "secret/staging/payment"
}

data "vault_generic_secret" "account_production" {
  provider = vault.vault_prod
  path     = "secret/production/account"
}

data "vault_generic_secret" "gateway_production" {
  provider = vault.vault_prod
  path     = "secret/production/gateway"
}

data "vault_generic_secret" "payment_production" {
  provider = vault.vault_prod
  path     = "secret/production/payment"
}

