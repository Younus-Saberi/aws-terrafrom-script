variable "public_subnet_id" {}
variable "security_group_id" {}

resource "aws_instance" "my_instance" {
  ami           = "ami-0ff8a91507f77f867"  # Change to desired AMI
  instance_type = "t2.micro"
  subnet_id     = var.public_subnet_id

  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }

  vpc_security_group_ids = [var.security_group_id]

  tags = {
    "purpose" = "Assignment"
  }
}
