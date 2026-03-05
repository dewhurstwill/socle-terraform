terraform {
  backend "http" {
    address        = "https://apollo-indiana-favors-concerned.trycloudflare.com/api/v1/state/dfca6d0a-e7f2-4257-924f-2e77dc9b74ae"
    lock_address   = "https://apollo-indiana-favors-concerned.trycloudflare.com/api/v1/state/dfca6d0a-e7f2-4257-924f-2e77dc9b74ae/lock"
    unlock_address = "https://apollo-indiana-favors-concerned.trycloudflare.com/api/v1/state/dfca6d0a-e7f2-4257-924f-2e77dc9b74ae/lock"
    lock_method    = "POST"
    unlock_method  = "DELETE"
    username       = "socle"
    password       = "socle_fd5390af041f8bc3ae2a824c09f9c1332db5e6f3be6ba4cfaa979cd2e9f90392"
  }
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.8.1"
    }
  }
}

provider "random" {}

variable "hello" {
  type = string
  default = "Hello"
}

output "hw" {
  value = "${var.hello} World"
}

output "hy" {
  value = "${var.hello} You"
}

resource "random_uuid" "test" {}

output "random" {
  value = random_uuid.test.result
}
