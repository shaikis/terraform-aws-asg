resource "aws_security_group" "asg_instance_sg" {
  name               =  var.asg_name
  vpc_id             =  var.vpcid

  ingress = var.ingress_string

  egress = var.egress_string

}
