resource "aws_instance" "ec2" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-07d70a19582692526"]
  tags = {
    Name = "test"
  }

  provisioner "remote-exec" {

    connection {
      host = self.public_ip
      user = "root"
      password = "DevOps321"
    }

    inline = [
      "echo Hello"
    ]
  }

}
