# terraform-aws-asg
### Usage
```
module "asg" {
    source = git@github.com:shaikis/terraform-aws-asg.git
    vpcid                                   = "vpc-id1"
    alb_app_http_sg_id                      = "sg-id1"
    asg_instance_name                       = "myAsg"
    asg_instance_sg_ingress_from_port       = 80
    asg_instance_sg_ingress_to_port         = 80
    asg_instance_sg_ingress_to_protocol     = "TCP"
    asg_instance_sg_egress_from_port        = 0
    asg_instance_sg_egress_to_port          = 0
    asg_instance_sg_egress_protocol         = -1
    asg_instance_sg_egress_cidr_blocks      = ["0.0.0.0/0"]
    subnetids                               = [sub-id1, sub-id2]
    asg_desired_capacity                    = 1
    asg_cpacity_max_size                    = 1
    asg_capacity_min_size                   = 1
    app_lb_target_group_arn                 = "arn...etc"
    asg_launch_template_name                = "MyAsgLaunchTemplate"
    asg_launch_template_image_id            = "img-abc123"
    asg_launch_template_instance_type       = "t2.micro"

}
```