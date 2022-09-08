resource "aws_security_group" "alb" {
  name        = "alb-sg"
  description = "Allow end user with http"
  vpc_id      = "vpc-049f215e85a9ff2c2"

  ingress {
    description      = "connecting end user on alb"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "alb-sg"
    terrsform ="true"
  }
}