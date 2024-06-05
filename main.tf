# Resource definition
resource "null_resource" "hello" {
  
}

# Output "Hello world" during the apply stage
output "hello_world" {
  value = "Heyy Hello world "
}
