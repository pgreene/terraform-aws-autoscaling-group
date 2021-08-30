resource "aws_autoscaling_group" "general" {
  name_prefix = var.name
  launch_configuration = var.launch_configuration
  placement_group = var.placement_group
  min_size = var.min_size
  max_size = var.max_size
  desired_capacity = var.desired_capacity
  force_delete = var.force_delete
  load_balancers = var.load_balancers
  health_check_type = var.health_check_type
  health_check_grace_period = var.health_check_grace_period
  termination_policies = var.termination_policies
  target_group_arns = var.target_group_arns
  suspended_processes = var.suspended_processes
  default_cooldown = var.default_cooldown

  metrics_granularity = var.metrics_granularity
  enabled_metrics = var.enabled_metrics
  wait_for_capacity_timeout = var.wait_for_capacity_timeout
  min_elb_capacity = var.min_elb_capacity
  wait_for_elb_capacity = var.wait_for_elb_capacity
  protect_from_scale_in = var.protect_from_scale_in
  service_linked_role_arn = var.service_linked_role_arn
  max_instance_lifetime = var.max_instance_lifetime
  
  //vpc_zone_identifier = = ["${aws_subnet.example1.id}", "${aws_subnet.example2.id}"]
  vpc_zone_identifier = var.vpc_zone_identifier

  dynamic "launch_template" {
    for_each = var.launch_template == null ? [] : [var.launch_template]
      content {
        id = launch_template.value.id
        version = launch_template.value.lc_version
      }
  }
  
  tags = var.tags

  lifecycle {
    create_before_destroy = true
  }
}