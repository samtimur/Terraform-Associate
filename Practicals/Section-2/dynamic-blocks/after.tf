provider "aws" {
    region = "eu-west-2"
    access_key = "AKIAS3O5V7MIP5ZM3RX4"
    secret_key = "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"
}

variable "sg_ports" {
    type = list(number)
    description = "list of ingress ports"
    default = [ 8200, 8201, 8300, 9200, 9500 ]
  
}

resource "aws_security_group" "demo_sg" {
  name = "dynamic-sg"
  description = "Ingress for Vault"

  dynamic "ingress" {
    for_each = var.sg_ports
    iterator = port
    content {
        from_port = port.value 
        to_port = port.value
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
  }

    dynamic "egress" {
        for_each = var.sg_ports
        iterator = port
        content {
            from_port = port.value 
            to_port = port.value
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }

}
