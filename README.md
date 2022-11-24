# terraform-aws-asg
### Usage
```
module "asg" {
    source = git@github.com:shaikis/terraform-aws-asg.git
    vpcid                                   = "vpc-id1"
    alb_app_http_sg_id                      = "sg-id1"
    asg_instance_name                       = "myAsg"
    subnetids                               = [sub-id1, sub-id2]
    asg_desired_capacity                    = 1
    asg_cpacity_max_size                    = 1
    asg_capacity_min_size                   = 1
    app_lb_target_group_arn                 = "arn...etc"
    asg_launch_template_name                = "MyAsgLaunchTemplate"
    asg_launch_template_image_id            = "img-abc123"
    asg_launch_template_instance_type       = "t2.micro"
    # Security group related parameters.
    ingress_string = [
        {
      description      = "TLS from VPC"
      from_port        = 443
      to_port          = 443
      protocol         = "tcp"
      cidr_blocks      = [aws_vpc.main.cidr_block]
      ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    }
    ]
    egress_string = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
    ]

}
```
