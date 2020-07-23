
# variable "instance1_id" {
  
# }

# variable "instance2_id" {
  
# }


# variable sg_id {}
# resource "aws_elb" "default" {
#   name = "ec2-elb"
#   instances = ["${var.instance1_id}", "${var.instance2_id}"]
#   availability_zones = ["eu-west-2a","eu-west-2b","eu-west-2c"]
#   cross_zone_load_balancing   = true
#   idle_timeout                = 400
#   connection_draining         = true
#   connection_draining_timeout = 400


#   listener {
#     instance_port = 80
#     instance_protocol = "tcp"
#     lb_port = 80
#     lb_protocol = "tcp"
#   }

#   health_check {
#     target = "HTTP:80/"
#     healthy_threshold = 2
#     unhealthy_threshold = 2
#     interval = 30
#     timeout = 5
    
#   }

#   tags {
#     Name = "ec2-elb"
#   }
# }


# resource "aws_lb" "test" {
#   name               = "test-lb-tf"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = ["${var.sg_id}"]
# #   subnets            = ["${aws_subnet.public.*.id}"]

#   enable_deletion_protection = true

# #   access_logs {
# #     bucket  = "${aws_s3_bucket.lb_logs.bucket}"
# #     prefix  = "test-lb"
# #     enabled = true
# #   }

# #   tags = {
# #     Environment = "production"
# #   }
# }