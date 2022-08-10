/*
provider "aws" {
    region = "eu-west-2"
    access_key = "AKIAS3O5V7MIP5ZM3RX4"
    secret_key = "oP9uNljW2JDCUdyNqkfPwNMuThZAU9AD2dt9dSnv"
}

resource "aws_security_group" "demo_sg" {
  name = "sample-sg"

  ingress {
    from_port = 8200
    to_port   = 8200
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
    from_port = 8201
    to_port   = 8201
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
    from_port = 8300
    to_port   = 8300
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
    from_port = 8200
    to_port   = 8200
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
    from_port = 9500
    to_port   = 9500
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
*/
