resource "aws_security_group" "bastion" {
  name        = "bastion-sg"
  description = "Allow admin with ssh"
  vpc_id      = vpc-049f215e85a9ff2c2

  ingress {
    description      = "connecting admin on ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["49.205.66.126/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "bastion-sg"
    terrsform ="true"
  }
}