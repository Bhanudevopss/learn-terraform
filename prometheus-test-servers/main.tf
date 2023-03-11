resource "aws_spot_instance_request" "node1" {
  ami                    = "ami-07d0eaa2d077d21b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-07d70a19582692526"]
  wait_for_fulfillment   = true

  tags = {
    Name = "prom-test-server"
  }
}

resource "aws_spot_instance_request" "node2" {
  ami                    = "ami-07d0eaa2d077d21b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-07d70a19582692526"]
  wait_for_fulfillment   = true

  tags = {
    Name = "prom-test-node"
  }
}

