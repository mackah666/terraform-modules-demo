
# variable "from_port" {}
# variable "to_port" {}



resource "aws_security_group" "instance" {
  name = "terraform-example-instance"

  ingress {
    from_port = 8585
    to_port = 8585
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 8585
    to_port = 8585
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = -1
    to_port = -1
    protocol = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
}

output "security_group_id" {
  value       = "${aws_security_group.instance.id}"
  description = "The Id of the security group created."
}