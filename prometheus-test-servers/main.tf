resource "aws_spot_instance_request" "node1" {
  wait_for_fulfillment = true
  ami                    = "ami-07d0eaa2d077d21b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-07d70a19582692526"]

  tags = {
    Name = "prom-test-server"
  }
}

resource "aws_ec2_tag" "node1" {
  resource_id = aws_spot_instance_request.node1.spot_instance_id
  key         = "Name"
  value       = "prom-test-server"
}

resource "aws_spot_instance_request" "node2" {
  wait_for_fulfillment = true
  ami                    = "ami-07d0eaa2d077d21b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-07d70a19582692526"]

  tags = {
    Name = "prom-test-node"
  }
}

resource "aws_ec2_tag" "node2" {
  resource_id = aws_spot_instance_request.node2.spot_instance_id
  key         = "Name"
  value       = "prom-test-node"
}

