variable "name" {
  description = "ASG Name"
  default = ""
}

variable "tags" {
  description = "ASG Tags"
  default = [
    {
      key = "Createdby"
      value = "Terraform"
      propagate_at_launch = true
    }
  ]
}

variable "launch_configuration" {
  description = ""
  default = ""
}

variable "placement_group" {
  description = "Optional"
  default = ""
}

variable "desired_capacity" {
  description = ""
  default = 1
}

variable "min_size" {
  description = ""
  default = 1
}

variable "max_size" {
  description = ""
  default = 1
}

variable "force_delete" {
  description = " (Optional) Allows deleting the autoscaling group without waiting for all instances in the pool to terminate. You can force an autoscaling group to delete even if it's in the process of scaling a resource. Normally, Terraform drains all the instances before deleting the group. This bypasses that behavior and potentially leaves resources dangling."
  default = true
}

variable "load_balancers" {
  description = "(Optional) A list of elastic load balancer names to add to the autoscaling group names. Only valid for classic load balancers. For ALBs, use target_group_arns instead."
  default = null
}

variable "health_check_type" {
  description = "(Optional) EC2 or ELB. Controls how health checking is done."
  default = null
}

variable "health_check_grace_period" {
  description = "(Optional) Default: 300 seconds - after instance comes into service before checking health."
  default = null
}

variable "termination_policies" {
  description = "(Optional) A list of policies to decide how the instances in the auto scale group should be terminated. The allowed values are OldestInstance, NewestInstance, OldestLaunchConfiguration, ClosestToNextInstanceHour, OldestLaunchTemplate, AllocationStrategy, Default."
  default = ["OldestInstance", "OldestLaunchConfiguration"]
}

variable "target_group_arns" {
  description = "(Optional) A list of aws_alb_target_group ARNs, for use with Application or Network Load Balancing."
  default = null
}

variable "suspended_processes" {
  description = "(Optional) A list of processes to suspend for the AutoScaling Group. The allowed values are Launch, Terminate, HealthCheck, ReplaceUnhealthy, AZRebalance, AlarmNotification, ScheduledActions, AddToLoadBalancer. Note that if you suspend either the Launch or Terminate process types, it can prevent your autoscaling group from functioning properly."
  default = null
}

variable "default_cooldown" {
  default = null
}

variable "metrics_granularity" {
  description = "(Optional) The granularity to associate with the metrics to collect. The only valid value is 1Minute. Default is 1Minute."
  default = null
}

variable "enabled_metrics" {
  description = "(Optional) A list of metrics to collect. The allowed values are GroupDesiredCapacity, GroupInServiceCapacity, GroupPendingCapacity, GroupMinSize, GroupMaxSize, GroupInServiceInstances, GroupPendingInstances, GroupStandbyInstances, GroupStandbyCapacity, GroupTerminatingCapacity, GroupTerminatingInstances, GroupTotalCapacity, GroupTotalInstances."
  default = null
}

variable "wait_for_capacity_timeout" {
  default = "10m"
}

variable "wait_for_elb_capacity" {
  default = null
}

variable "min_elb_capacity" {
  description = "(Optional) Setting this causes Terraform to wait for this number of instances from this autoscaling group to show up healthy in the ELB only on creation. Updates will not wait on ELB instance number changes."
  default = null
}

variable "protect_from_scale_in" {
  description = "(Optional) Allows setting instance protection. The autoscaling group will not select instances with this setting for terminination during scale in events."
  default = null
}

variable "service_linked_role_arn" {
  description = "(Optional) The ARN of the service-linked role that the ASG will use to call other AWS services"
  default = null
}

variable "max_instance_lifetime" {
  description = "(Optional) The maximum amount of time, in seconds, that an instance can be in service, values must be either equal to 0 or between 604800 and 31536000 seconds."
  default = 0
}

variable "vpc_zone_identifier" {
  description = "(Optional) A list of subnet IDs to launch resources in."
  default = []
}

variable "launch_template" {
  default = null
}

variable "id" {
  default = null
}

variable "lc_version" {
  default = null
}


