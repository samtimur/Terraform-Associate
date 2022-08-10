resource "aws_instance" "myweb" {
    ami =  "ami-078a289ddf4b09ae0"
    instance_type = var.instance_type
}