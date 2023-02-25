resource "aws_instance" "frontend" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07d70a19582692526"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z04634692Z9HUU48HQ5JP"
  name    = "frontend-dev.devopswithbhanu.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "cart" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07d70a19582692526"]
  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z04634692Z9HUU48HQ5JP"
  name    = "cart-dev.devopswithbhanu.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "catalogue" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07d70a19582692526"]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z04634692Z9HUU48HQ5JP"
  name    = "catalogue-dev.devopswithbhanu.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "user" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07d70a19582692526"]
  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z04634692Z9HUU48HQ5JP"
  name    = "user-dev.devopswithbhanu.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "shipping" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07d70a19582692526"]
  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z04634692Z9HUU48HQ5JP"
  name    = "shipping-dev.devopswithbhanu.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "payment" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07d70a19582692526"]
  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z04634692Z9HUU48HQ5JP"
  name    = "payment-dev.devopswithbhanu.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "mongodb" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07d70a19582692526"]
  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z04634692Z9HUU48HQ5JP"
  name    = "mongodb-dev.devopswithbhanu.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "mysql" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07d70a19582692526"]
  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z04634692Z9HUU48HQ5JP"
  name    = "mysql-dev.devopswithbhanu.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "redis" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07d70a19582692526"]
  tags = {
    Name = "redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z04634692Z9HUU48HQ5JP"
  name    = "redis-dev.devopswithbhanu.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07d70a19582692526"]
  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z04634692Z9HUU48HQ5JP"
  name    = "rabbitmq-dev.devopswithbhanu.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

