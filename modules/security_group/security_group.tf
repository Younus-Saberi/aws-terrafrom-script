resource "aws_security_group" "my_security_group" {
  name_prefix = "my-security-group-"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "my_security_group_id" {
  value = aws_security_group.my_security_group.id
}
