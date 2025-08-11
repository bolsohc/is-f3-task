resource "docker_container" "account_production" {
  image = "form3tech-oss/platformtest-account"
  name  = "account_production"

  env = [
    "VAULT_ADDR=http://vault-production:8200",
    "VAULT_USERNAME=account-production",
    "VAULT_PASSWORD=123-account-production",
    "ENVIRONMENT=production"
  ]

  networks_advanced {
    name = "vagrant_production"
  }

  lifecycle {
    ignore_changes = all
  }

  depends_on = [vault_generic_endpoint.account_production]
}

resource "docker_container" "gateway_production" {
  image = "form3tech-oss/platformtest-gateway"
  name  = "gateway_production"

  env = [
    "VAULT_ADDR=http://vault-production:8200",
    "VAULT_USERNAME=gateway-production",
    "VAULT_PASSWORD=123-gateway-production",
    "ENVIRONMENT=production"
  ]

  networks_advanced {
    name = "vagrant_production"
  }

  lifecycle {
    ignore_changes = all
  }

  depends_on = [vault_generic_endpoint.gateway_production]
}

resource "docker_container" "payment_production" {
  image = "form3tech-oss/platformtest-payment"
  name  = "payment_production"

  env = [
    "VAULT_ADDR=http://vault-production:8200",
    "VAULT_USERNAME=payment-production",
    "VAULT_PASSWORD=123-payment-production",
    "ENVIRONMENT=production"
  ]

  networks_advanced {
    name = "vagrant_production"
  }

  lifecycle {
    ignore_changes = all
  }

  depends_on = [vault_generic_endpoint.payment_production]
}

resource "docker_container" "frontend_production" {
  image = "docker.io/nginx:1.22.0-alpine"
  name  = "frontend_production"

  ports {
    internal = 80
    external = 4081
  }

  networks_advanced {
    name = "vagrant_production"
  }

  lifecycle {
    ignore_changes = all
  }

}

resource "docker_container" "account_development" {
  image = "form3tech-oss/platformtest-account"
  name  = "account_development"

  env = [
    "VAULT_ADDR=http://vault-development:8200",
    "VAULT_USERNAME=account-development",
    "VAULT_PASSWORD=123-account-development",
    "ENVIRONMENT=development"
  ]

  networks_advanced {
    name = "vagrant_development"
  }

  lifecycle {
    ignore_changes = all
  }

  depends_on = [vault_generic_endpoint.account_development]
}

resource "docker_container" "gateway_development" {
  image = "form3tech-oss/platformtest-gateway"
  name  = "gateway_development"

  env = [
    "VAULT_ADDR=http://vault-development:8200",
    "VAULT_USERNAME=gateway-development",
    "VAULT_PASSWORD=123-gateway-development",
    "ENVIRONMENT=development"
  ]

  networks_advanced {
    name = "vagrant_development"
  }

  lifecycle {
    ignore_changes = all
  }

  depends_on = [vault_generic_endpoint.gateway_development]
}

resource "docker_container" "payment_development" {
  image = "form3tech-oss/platformtest-payment"
  name  = "payment_development"

  env = [
    "VAULT_ADDR=http://vault-development:8200",
    "VAULT_USERNAME=payment-development",
    "VAULT_PASSWORD=123-payment-development",
    "ENVIRONMENT=development"
  ]

  networks_advanced {
    name = "vagrant_development"
  }

  lifecycle {
    ignore_changes = all
  }

  depends_on = [vault_generic_endpoint.payment_development]
}

resource "docker_container" "frontend_development" {
  image = "docker.io/nginx:latest"
  name  = "frontend_development"

  ports {
    internal = 80
    external = 4080
  }

  networks_advanced {
    name = "vagrant_development"
  }

  lifecycle {
    ignore_changes = all
  }
}


resource "docker_container" "account_staging" {
  image = "form3tech-oss/platformtest-account"
  name  = "account_staging"

  env = [
    "VAULT_ADDR=http://vault-staging:8200",
    "VAULT_USERNAME=account-staging",
    "VAULT_PASSWORD=123-account-staging",
    "ENVIRONMENT=staging"
  ]

  networks_advanced {
    name = "vagrant_staging"
  }

  lifecycle {
    ignore_changes = all
  }

  depends_on = [vault_generic_endpoint.account_staging]
}

resource "docker_container" "gateway_staging" {
  image = "form3tech-oss/platformtest-gateway"
  name  = "gateway_staging"

  env = [
    "VAULT_ADDR=http://vault-staging:8200",
    "VAULT_USERNAME=gateway-staging",
    "VAULT_PASSWORD=123-gateway-staging",
    "ENVIRONMENT=staging"
  ]

  networks_advanced {
    name = "vagrant_staging"
  }

  lifecycle {
    ignore_changes = all
  }

  depends_on = [vault_generic_endpoint.gateway_staging]
}

resource "docker_container" "payment_staging" {
  image = "form3tech-oss/platformtest-payment"
  name  = "payment_staging"

  env = [
    "VAULT_ADDR=http://vault-staging:8200",
    "VAULT_USERNAME=payment-staging",
    "VAULT_PASSWORD=123-payment-staging",
    "ENVIRONMENT=staging"
  ]

  networks_advanced {
    name = "vagrant_staging"
  }

  lifecycle {
    ignore_changes = all
  }

  depends_on = [vault_generic_endpoint.payment_staging]
}

resource "docker_container" "frontend_staging" {
  image = "docker.io/nginx:latest"
  name  = "frontend_staging"

  ports {
    internal = 80
    external = 4080
  }

  networks_advanced {
    name = "vagrant_staging"
  }

  lifecycle {
    ignore_changes = all
  }
}
