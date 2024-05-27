provider "aws" {
  region = "us-west-2"  # Specify the AWS region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Specify the AMI ID of the instance
  instance_type = "t2.micro"  # Specify the instance type

  tags = {
    Name = "terraform-example"
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'Hello, World!'"
    ]
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"  # Specify the user for SSH connection
    private_key = file("~/.ssh/id_rsa")  # Specify the path to your private key
    host        = self.public_ip  # Use the public IP of the instance for SSH connection
  }
}
