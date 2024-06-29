variable "example_string" {
  description = "An example string variable"
  type        = string
  default     = "Hello, default!"
}

variable "example_number" {
  description = "An example number variable"
  type        = number
  default     = 00
}

variable "example_list" {
  description = "An example list variable"
  type        = list(string)
  default     = ["deafult", "tvar", "list"]
}
