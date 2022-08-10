
provider "aws" {
    region = "eu-west-2"
    access_key = "AKIAZ53ZT7YGVJPQUAZ2"
    secret_key = "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"
}

locals {
    time = formatdate ("DD MMM YYYY hh:mm ZZZ",timestamp())
}

variable "region" {
  default = "ap-south-1"
} 

variable "tags" {
  type = list
  default = ["firstec2","secondec2"]
}

variable "ami" {
 type = map
 default = {
    eu-west-1 = "ami-0d71ea30463e0ff8d"
    eu-west-2 = "ami-078a289ddf4b09ae0"
    ap-south-1 = "ami-08df646e18b182346"

 } 
}

resource "aws_key_pair" "loginkey" {
    key_name = "login-key"
    public_key = file("${path.module}/id_rsa.pub")
}

resource "aws_instance" "app-dev" {
  ami = lookup(var.ami,var.region)
  instance_type = "t2.micro"
  key_name = aws_key_pair.loginkey.key_name
  count = 2 

  tags = {
    Name = element(var.tags,count.index)
  }
}

output "timestamp" {
    value = local.time  
}