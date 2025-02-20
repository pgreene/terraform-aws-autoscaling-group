Terraform Module for AWS Autoscaling Group

## References 

* https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group
* https://github.com/terraform-aws-modules/terraform-aws-autoscaling/blob/master/main.tf
* https://github.com/terraform-aws-modules/terraform-aws-autoscaling/blob/master/examples/complete/main.tf

## Example Usage

```
module "autoscaling-schedule-start" {
  source = "git::https://github.com/pgreene/terraform-aws-autoscaling-group.git?ref=1.0.0"
  autoscaling_group_name = module.aws_asg.name
  scheduled_action_name = "start"
  #start_time = "2024-05-06T14:06:00Z" # 9:53am Eastern
  #end_time =
  time_zone = "Etc/GMT-4"
  recurrence = "00 22 * * 2" # every Tue at 10:00pm Eastern
  desired_capacity = (local.DESIRED - 6)
  min_size = (local.MIN - 6)
  max_size = local.MAX
  depends_on = [
    module.aws_asg
  ]
}

module "autoscaling-schedule-end" {
  source = "git::https://github.com/pgreene/terraform-aws-autoscaling-group.git?ref=1.0.0"
  autoscaling_group_name = module.aws_asg.name
  scheduled_action_name = "end"
  #start_time = "2024-05-06T14:10:00Z" # 9:53am Eastern
  #end_time =
  time_zone = "Etc/GMT-4"
  recurrence = "00 10 * * 3" # every Wed at 10:00am Eastern
  desired_capacity = local.DESIRED
  min_size = local.MIN
  max_size = local.MAX
  depends_on = [
    module.aws_asg
  ]
}
```
