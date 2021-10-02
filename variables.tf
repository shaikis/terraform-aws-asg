variable "vpcid" { }
variable "alb_app_http_sg_id" {
    type = list  
}

variable "asg_instance_name" {}
variable "asg_instance_sg_ingress_from_port" {}
variable "asg_instance_sg_ingress_to_port" {}
variable "asg_instance_sg_ingress_to_protocol" {}
variable "asg_instance_sg_egress_from_port" {}
variable "asg_instance_sg_egress_to_port" {}
variable "asg_instance_sg_egress_protocol" {}
variable "asg_instance_sg_egress_cidr_blocks" {}

variable "subnetids" {
    type = list  
}
variable "asg_desired_capacity" {
    default = 1
}
variable "asg_cpacity_max_size" {
    default = 1
}
variable "asg_capacity_min_size" {
    default = 1
}
variable "app_lb_target_group_arn" {}

variable "asg_launch_template_name" {}
variable "asg_launch_template_image_id" {}
variable "asg_launch_template_instance_type" {}
variable "use_default_template" {
    default = false
    type    = bool
}

variable "user_data" {
    type = map(string)
    default = ""
}
variable "ssh_keypair" {
    type= string
    default = ""
}
variable "ingress_string" {
    type = list(map(string))
    default=[]
}
variable "egress_string" {
    type = list(map(string))
    default=[]
}
