variable "sample" {
  default = "Hello World"
}

output "sample" {
  value = var.sample
}

variable "sample1" {}

output "sample1" {
  value = var.sample1
}

variable "cli" {}

output "cli" {
  value = var.cli
}

variable "input" {}


variable "sample5" {
  default = "Hello"
}

variable "sample6" {
  default = [
  "Hello",
    1000,
    true,
    "world"
  ]
}

variable "sample7" {
  default = {
    string = "Hello",
    Number = 100,
    boolean = true
  }
}

output "types" {
  value = "variable sample5 - ${var.sample5}, First value in list - ${var.sample6[0]}, boolean value of Map = ${var.sample7["boolean"]}"
}

