resource "aws_route53_record" "record" {
  zone_id = "Z04634692Z9HUU48HQ5JP"
  name    = "${var.component}-dev.devopswithbhanu.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}

