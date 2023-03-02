variable "test" {
  default = {
    "catalogue" = {
      "private_ip" = "172.31.10.172"
    }
    "user" = {
      "private_ip" = "172.31.9.24"
    }
  }
}

output "test" {
  value = var.test["catalogue"].private_ip
}

