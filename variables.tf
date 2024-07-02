variable "example_string" {
  description = "An example string variable"
  type        = string
}

variable "example_number" {
  description = "An example number variable"
  type        = number
}

variable "example_list" {
  description = "An example list variable"
  type        = list(string)
  default = ["default", "tf", "vars"]
}

variable "cond" {
  description = "true/false value"
  type        = bool
}
