provider "aws" {
  region     = "eu-west-2"
  access_key = "AKIAZ53ZT7YGVJPQUAZ2"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
  ami           = "ami-078a289ddf4b09ae0"
  instance_type = "t2.micro"
}
 