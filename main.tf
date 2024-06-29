# Dummy resource 1
resource "null_resource" "example1" {
  provisioner "local-exec" {
    command = "echo Example Resource 1"
  }
}

# Dummy resource 2
resource "null_resource" "example2" {
  provisioner "local-exec" {
    command = "echo Example Resource 2"
  }
}

# Dummy resource 3
resource "null_resource" "example3" {
  provisioner "local-exec" {
    command = "echo Example Resource 3"
  }
}
