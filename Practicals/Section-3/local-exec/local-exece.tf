provider "aws" {
    region = "eu-west-2"
    access_key = "AKIAS3O5V7MIP5ZM3RX4"
    secret_key = "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"
}


resource "aws_instance" "myec2" {
    ami =  "ami-078a289ddf4b09ae0"
    instance_type = "t2.micro"
    key_name = "terraform-key"

    provisioner "local-exec" {
    command = "echo ${aws_instance.myec2.private_ip} >> private_ips.txt"
  }
}