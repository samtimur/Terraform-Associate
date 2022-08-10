provider "aws" {
    region = "eu-west-2"
    access_key = "AKIAZ53ZT7YGVJPQUAZ2"
    secret_key = "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"
}

resource "aws_iam_user" "lb" {
  name = "loadbalancer.${count.index}"
  count = 5
  path = "/system/"
}