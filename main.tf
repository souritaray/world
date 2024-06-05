provider "null" {}

  connection {
    type        = "ssh"
    user        = "ec2-user"  # Specify the user for SSH connection
    private_key = file("~/.ssh/id_rsa")  # Specify the path to your private key
    host        = self.public_ip  # Use the public IP of the instance for SSH connection
resource "null_resource" "hello_world" {
  provisioner "local-exec" {
    command = "echo Hello, World"
  }
}
