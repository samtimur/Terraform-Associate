provider "aws" {
    region = "eu-west-2"
    access_key = "AKIAZ53ZT7YGVJPQUAZ2"
    secret_key = "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"
}

variable "istest" {}

resource "aws_instance" "dev" {
    ami =  "ami-078a289ddf4b09ae0"
    instance_type = "t2.micro"
    count = var.istest == true ? 1 : 0
}

resource "aws_instance" "prod" {
    ami =  "ami-078a289ddf4b09ae0"
    instance_type = "t2.large"
    count = var.istest == false ? 1 : 0
}
 
 