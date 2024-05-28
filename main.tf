terraform {
  required_version = ">= 0.13"  # Specify the required Terraform version
}

provider "null" {}

resource "null_resource" "hello_world" {
  provisioner "local-exec" {
    command = "echo Hello, World"
  }
}
