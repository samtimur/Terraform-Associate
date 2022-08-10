provider "aws" {
    region = "eu-west-2"
    access_key = "AKIAS3O5V7MIP5ZM3RX4"
    secret_key = "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"
}


resource "aws_instance" "myec2" {
    ami =  "ami-078a289ddf4b09ae0"
    instance_type = lookup(var.instance_type,terraform.workspace)
}
 
variable "instance_type" {
  type = map(string)

  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prd     =  "t2.large"
  } 
}