resource "aws_security_group" "asg_instance_sg" {
  name               =  var.asg_name
  vpc_id             =  var.vpcid

  ingress {
    from_port        = var.asg_instance_sg_ingress_from_port
    to_port          = var.asg_instance_sg_ingress_to_port
    protocol         = var.asg_instance_sg_ingress_to_protocol
    security_groups  = var.alb_app_http_sg_id
  }

  egress {
    from_port       = var.asg_instance_sg_egress_from_port
    to_port         = var.asg_instance_sg_egress_to_port
    protocol        = var.asg_instance_sg_egress_protocol
    cidr_blocks     = var.asg_instance_sg_egress_cidr_blocks
  }

}