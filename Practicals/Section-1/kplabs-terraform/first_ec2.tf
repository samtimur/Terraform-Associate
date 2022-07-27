#Proider Block
provider "aws" {
    region = "eu-west-2"
    access_key = "AKIAZ53ZT7YGQC4YPLOB"
    secret_key = "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"
}


#Resource Block
resource "aws_instance" "myec2" {
    ami =  "ami-078a289ddf4b09ae0"
    instance_type = "t2.micro"
}
 