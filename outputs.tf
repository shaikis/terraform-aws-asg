output "sg_id" {
  value = aws_security_group.asg_instance_sg.id
}

output "asg_id" {
  value = aws_autoscaling_group.main_asg.id
}
