
# ASG Launch template
resource "aws_launch_template" "asg_launch_template" {
  name_prefix            = var.asg_launch_template_name
  image_id               = var.asg_launch_template_image_id
  instance_type          = var.asg_launch_template_instance_type
  vpc_security_group_ids = [aws_security_group.asg_instance_sg.id]
  user_data              = file("user_data.sh")
  key_name               = var.ssh_keypair
}


# ASG
resource "aws_autoscaling_group" "main_asg" {
  desired_capacity    = var.asg_desired_capacity
  max_size            = var.asg_cpacity_max_size
  min_size            = var.asg_capacity_min_size
  target_group_arns   = var.app_lb_target_group_arn
  vpc_zone_identifier = var.subnetids

  launch_template {
    id      = aws_launch_template.asg_launch_template.id
    version = "$Latest"
  }
  
  lifecycle { 
    ignore_changes = [desired_capacity, target_group_arns]
  }
}

