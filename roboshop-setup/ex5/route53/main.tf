resource "aws_route53_record" "record" {
  zone_id = "Z04634692Z9HUU48HQ5JP"
  name    = "${var.component}-dev.devopswithbhanu.online"
  type    = "A"
  ttl     = 30
  record = var.private_ip
}

variable "private_ip" {}
variable "component" {}

