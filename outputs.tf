output "example_string_value" {
  value = var.example_string
}

output "example_number_value" {
  value = var.example_number
}

output "example_list_value" {
  value = var.example_list
}

output "resource1_id" {
  value = var.cond ? null_resource.example1.id : null
}

output "resource2_id" {
  value = null_resource.example2.id
}

output "resource3_id" {
  value = null_resource.example3.id
}
