provider "aws" {
  region = "us-west-2"
}

module "secret" {
  source = "../"

  name  = "dummy-secret"
  value = "password"
  tags = {
    Author      = "Admin"
    Environment = "Development"
  }
}

output "secret" {
  value = module.secret.secret
}

output "secret_version" {
  value = module.secret.secret_version
}
