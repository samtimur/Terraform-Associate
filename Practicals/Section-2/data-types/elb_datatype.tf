provider "aws" {
    region = "eu-west-2"
    access_key = "AKIAZ53ZT7YGVJPQUAZ2"
    secret_key = "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"
}

resource "aws_elb" "bar" {
  name               = var.elb_name
  availability_zones = var.az

  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }
  
  cross_zone_load_balancing   = true
  idle_timeout                = var.timeout
  connection_draining         = true
  connection_draining_timeout = var.timeout

  tags = {
    Name = "foobar-terraform-elb"
  }
}
