variable "example_string" {
  description = "An example string variable"
  type        = string
  default     = "Hello, Terraform!"
}

variable "example_number" {
  description = "An example number variable"
  type        = number
  default     = 42
}

variable "example_list" {
  description = "An example list variable"
  type        = list(string)
  default     = ["one", "two", "three"]
}
