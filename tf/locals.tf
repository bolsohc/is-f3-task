locals {
  environments = {
    development = {
      provider = vault.vault_dev
    }
    staging = {
      provider = vault.vault_staging
    }
    production = {
      provider = vault.vault_prod
    }
  }

  services = {
    account = {
      db_user     = "account"
      db_password = "965d3c27-9e20-4d41-91c9-61e6631870e7"
    }
    gateway = {
      db_user     = "gateway"
      db_password = "10350819-4802-47ac-9476-6fa781e35cfd"
    }
    payment = {
      db_user     = "payment"
      db_password = "a63e8938-6d49-49ea-905d-e03a683059e7"
    }
  }
}

