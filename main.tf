terraform {
  backend "http" {
    address        = "http://localhost:3000/api/v1/state/51bebc1c-c425-4c4f-a7a8-06da11de6047"
    lock_address   = "http://localhost:3000/api/v1/state/51bebc1c-c425-4c4f-a7a8-06da11de6047/lock"
    unlock_address = "http://localhost:3000/api/v1/state/51bebc1c-c425-4c4f-a7a8-06da11de6047/lock"
    lock_method    = "POST"
    unlock_method  = "DELETE"
    username       = "socle"
    password       = "socle_fd5390af041f8bc3ae2a824c09f9c1332db5e6f3be6ba4cfaa979cd2e9f90392"
  }
}

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