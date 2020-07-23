module "sg_module" {
  source = "./sg_module"
}
module "ec2_module_1" {
  sg_id = "${module.sg_module.security_group_id}"
  ec2_name = "terraform example 1"
  source = "./ec2_module"
}

module "ec2_module_2" {
  sg_id = "${module.sg_module.security_group_id}"
  ec2_name = "terraform example 2"
  source = "./ec2_module"
}


# module "create_elb" {
#   sg_id = "${module.sg_module.security_group_id}"
#   # instance1_id = "${module.ec2_module_1.instance_id}"
#   # instance2_id = "${module.ec2_module_2.instance_id}"
#   source = "./elb_module"
# }





