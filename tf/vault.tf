resource "vault_audit" "audit_dev" {
  provider = vault.vault_dev
  type     = "file"

  options = {
    file_path = "/vault/logs/audit"
  }
}

resource "vault_audit" "audit_prod" {
  provider = vault.vault_prod
  type     = "file"

  options = {
    file_path = "/vault/logs/audit"
  }
}

resource "vault_audit" "audit_staging" {
  provider = vault.vault_staging
  type     = "file"

  options = {
    file_path = "/vault/logs/audit"
  }
}

resource "vault_auth_backend" "userpass_dev" {
  provider = vault.vault_dev
  type     = "userpass"
}

resource "vault_auth_backend" "userpass_prod" {
  provider = vault.vault_prod
  type     = "userpass"
}

resource "vault_auth_backend" "userpass_staging" {
  provider = vault.vault_staging
  type     = "userpass"
}

resource "vault_policy" "account_development" {
  provider = vault.vault_dev
  name     = "account-development"

  policy = <<EOT
path "secret/data/development/account" {
    capabilities = ["list", "read"]
}
EOT
}

resource "vault_policy" "gateway_development" {
  provider = vault.vault_dev
  name     = "gateway-development"

  policy = <<EOT
path "secret/data/development/gateway" {
    capabilities = ["list", "read"]
}
EOT
}

resource "vault_policy" "payment_development" {
  provider = vault.vault_dev
  name     = "payment-development"

  policy = <<EOT
path "secret/data/development/payment" {
    capabilities = ["list", "read"]
}
EOT
}

resource "vault_policy" "account_production" {
  provider = vault.vault_prod
  name     = "account-production"

  policy = <<EOT
path "secret/data/production/account" {
    capabilities = ["list", "read"]
}
EOT
}

resource "vault_policy" "gateway_production" {
  provider = vault.vault_prod
  name     = "gateway-production"

  policy = <<EOT
path "secret/data/production/gateway" {
    capabilities = ["list", "read"]
}
EOT
}

resource "vault_policy" "payment_production" {
  provider = vault.vault_prod
  name     = "payment-production"

  policy = <<EOT
path "secret/data/production/payment" {
    capabilities = ["list", "read"]
}
EOT
}

resource "vault_policy" "account_staging" {
  provider = vault.vault_staging
  name     = "account-staging"

  policy = <<EOT
path "secret/data/staging/account" {
    capabilities = ["list", "read"]
}
EOT
}

resource "vault_policy" "gateway_staging" {
  provider = vault.vault_staging
  name     = "gateway-staging"

  policy = <<EOT
path "secret/data/staging/gateway" {
    capabilities = ["list", "read"]
}
EOT
}

resource "vault_policy" "payment_staging" {
  provider = vault.vault_staging
  name     = "payment-staging"

  policy = <<EOT
path "secret/data/staging/payment" {
    capabilities = ["list", "read"]
}
EOT
}

resource "vault_generic_secret" "account_development" {
  provider = vault.vault_dev
  path     = "secret/development/account"
  data_json = <<EOT
{
  "db_user": "account",
  "db_password": "965d3c27-9e20-4d41-91c9-61e6631870e7"
}
EOT
}

resource "vault_generic_secret" "gateway_development" {
  provider = vault.vault_dev
  path     = "secret/development/gateway"
  data_json = <<EOT
{
  "db_user": "gateway",
  "db_password": "10350819-4802-47ac-9476-6fa781e35cfd"
}
EOT
}

resource "vault_generic_secret" "payment_development" {
  provider = vault.vault_dev
  path     = "secret/development/payment"
  data_json = <<EOT
{
  "db_user": "payment",
  "db_password": "a63e8938-6d49-49ea-905d-e03a683059e7"
}
EOT
}

resource "vault_generic_endpoint" "account_development" {
  provider             = vault.vault_dev
  depends_on           = [vault_auth_backend.userpass_dev]
  path                 = "auth/userpass/users/account-development"
  ignore_absent_fields = true
  data_json = <<EOT
{
  "policies": ["account-development"],
  "password": "123-account-development"
}
EOT
}

resource "vault_generic_endpoint" "gateway_development" {
  provider             = vault.vault_dev
  depends_on           = [vault_auth_backend.userpass_dev]
  path                 = "auth/userpass/users/gateway-development"
  ignore_absent_fields = true
  data_json = <<EOT
{
  "policies": ["gateway-development"],
  "password": "123-gateway-development"
}
EOT
}

resource "vault_generic_endpoint" "payment_development" {
  provider             = vault.vault_dev
  depends_on           = [vault_auth_backend.userpass_dev]
  path                 = "auth/userpass/users/payment-development"
  ignore_absent_fields = true
  data_json = <<EOT
{
  "policies": ["payment-development"],
  "password": "123-payment-development"
}
EOT
}

resource "vault_generic_secret" "account_production" {
  provider = vault.vault_prod
  path     = "secret/production/account"
  data_json = <<EOT
{
  "db_user": "account",
  "db_password": "396e73e7-34d5-4b0a-ae1b-b128aa7f9977"
}
EOT
}

resource "vault_generic_secret" "gateway_production" {
  provider = vault.vault_prod
  path     = "secret/production/gateway"
  data_json = <<EOT
{
  "db_user": "gateway",
  "db_password": "33fc0cc8-b0e3-4c06-8cf6-c7dce2705329"
}
EOT
}

resource "vault_generic_secret" "payment_production" {
  provider = vault.vault_prod
  path     = "secret/production/payment"
  data_json = <<EOT
{
  "db_user": "payment",
  "db_password": "821462d7-47fb-402c-a22a-a58867602e39"
}
EOT
}

resource "vault_generic_endpoint" "account_production" {
  provider             = vault.vault_prod
  depends_on           = [vault_auth_backend.userpass_prod]
  path                 = "auth/userpass/users/account-production"
  ignore_absent_fields = true
  data_json = <<EOT
{
  "policies": ["account-production"],
  "password": "123-account-production"
}
EOT
}

resource "vault_generic_endpoint" "gateway_production" {
  provider             = vault.vault_prod
  depends_on           = [vault_auth_backend.userpass_prod]
  path                 = "auth/userpass/users/gateway-production"
  ignore_absent_fields = true
  data_json = <<EOT
{
  "policies": ["gateway-production"],
  "password": "123-gateway-production"
}
EOT
}

resource "vault_generic_endpoint" "payment_production" {
  provider             = vault.vault_prod
  depends_on           = [vault_auth_backend.userpass_prod]
  path                 = "auth/userpass/users/payment-production"
  ignore_absent_fields = true
  data_json = <<EOT
{
  "policies": ["payment-production"],
  "password": "123-payment-production"
}
EOT
}

resource "vault_generic_secret" "account_staging" {
  provider = vault.vault_staging
  path     = "secret/staging/account"
  data_json = <<EOT
{
  "db_user": "account",
  "db_password": "965d3c27-9e20-4d41-91c9-61e6631870e7"
}
EOT
}

resource "vault_generic_secret" "gateway_staging" {
  provider = vault.vault_staging
  path     = "secret/staging/gateway"
  data_json = <<EOT
{
  "db_user": "gateway",
  "db_password": "10350819-4802-47ac-9476-6fa781e35cfd"
}
EOT
}

resource "vault_generic_secret" "payment_staging" {
  provider = vault.vault_staging
  path     = "secret/staging/payment"
  data_json = <<EOT
{
  "db_user": "payment",
  "db_password": "a63e8938-6d49-49ea-905d-e03a683059e7"
}
EOT
}

resource "vault_generic_endpoint" "account_staging" {
  provider             = vault.vault_staging
  depends_on           = [vault_auth_backend.userpass_staging]
  path                 = "auth/userpass/users/account-staging"
  ignore_absent_fields = true
  data_json = <<EOT
{
  "policies": ["account-staging"],
  "password": "123-account-staging"
}
EOT
}

resource "vault_generic_endpoint" "gateway_staging" {
  provider             = vault.vault_staging
  depends_on           = [vault_auth_backend.userpass_staging]
  path                 = "auth/userpass/users/gateway-staging"
  ignore_absent_fields = true
  data_json = <<EOT
{
  "policies": ["gateway-staging"],
  "password": "123-gateway-staging"
}
EOT
}

resource "vault_generic_endpoint" "payment_staging" {
  provider             = vault.vault_staging
  depends_on           = [vault_auth_backend.userpass_staging]
  path                 = "auth/userpass/users/payment-staging"
  ignore_absent_fields = true
  data_json = <<EOT
{
  "policies": ["payment-staging"],
  "password": "123-payment-staging"
}
EOT
}
