data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}


resource "aws_instance" "instances" {
  for_each = var.instances
  ami = "ami-0a017d8ceb274537d"
  instance_type = each.value["type"]
  vpc_security_group_ids = ["sg-07d70a19582692526"]
  tags = {
    Name = each.value["name"]
  }
}

variable "instances" {
  default = {
    catalogue = {
      name = "catalogue"
      type = "t3.micro"
    }
    user = {
      name = "user"
      type = "t3.small"
    }
  }
}

## Immature code
//variable "names" {
//  default = [ "catalogue", "user"]
//}
//
//variable "types" {
//  default = [ "t3.micro", "t3.small"]
//}
//
//resource "aws_instance" "instances" {
//  count = length(var.names)
//  ami = "ami-0a017d8ceb274537d"
//  instance_type = var.types[count.index]
//  vpc_security_group_ids = ["sg-07d70a19582692526"]
//  tags = {
//    Name = var.names[count.index]
//  }
//}

## Little mature code
//variable "demo" {
//  default = [
//    {
//      name = "catalogue"
//      type = "t3.micro"
//    },
//    {
//      name = "user"
//      type = "t3.small"
//    }
//  ]
//}
//
//resource "aws_instance" "instances" {
//  count = length(var.demo)
//  ami = "ami-0a017d8ceb274537d"
//  instance_type = var.demo[count.index]["type"]
//  vpc_security_group_ids = ["sg-07d70a19582692526"]
//  tags = {
//    Name = var.demo[count.index]["name"]
//  }
//}
