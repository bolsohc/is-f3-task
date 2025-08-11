variable "vault_dev_address" {
  type        = string
  description = "Vault dev server address"
}

variable "vault_dev_token" {
  type        = string
  description = "Vault dev token"
  sensitive   = true
}

variable "vault_staging_address" {
  type        = string
  description = "Vault staging server address"
}

variable "vault_staging_token" {
  type        = string
  description = "Vault staging token"
  sensitive   = true
}

variable "vault_prod_address" {
  type        = string
  description = "Vault production server address"
}

variable "vault_prod_token" {
  type        = string
  description = "Vault production token"
  sensitive   = true
}

