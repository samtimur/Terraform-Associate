
provider "aws" {
    region = "eu-west-2"
    access_key = "AKIAS3O5V7MIBSPTGHWE"
    secret_key = "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"
}

data "aws_ami" "app_ami" {
  most_recent = "true"
  owners = ["amazon"]

      filter {
        name =  "name"
        values = ["amzn2-ami-hvm*"]
    }
}

resource "aws_instance" "myec2" {
    ami =  data.aws_ami.app_ami.id
    instance_type = "t2.micro"
}
 