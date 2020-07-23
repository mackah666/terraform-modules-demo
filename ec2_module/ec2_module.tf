variable "sg_id" {}

variable "ec2_name" {}


locals {
  common_tags = "${map(
    "Name", "${var.ec2_name}",
    "environment", "development",
    "owner", "mackah666corp"
  )}"
}


resource "aws_instance" "example" {
  ami           = "ami-0b1912235a9e70540"
  instance_type = "t2.micro"
  # vpc_security_group_ids = ["${var.sg_id}"]

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, world from Mackah666" > index.html
              nohup busybox httpd -f -p 8585 &
              EOF

  tags = local.common_tags
  
}

output "instance_id" {
  value       = "${aws_instance.example.id}"
  description = "The Id of the security group created."
}


# output "theId" {
#     value = "${data.aws_instance.ec2_my_admin_instance.id}"
# }