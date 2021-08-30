output "name" {
    value = aws_autoscaling_group.general.name
}

output "arn" {
    value = aws_autoscaling_group.general.arn
}

output "id" {
    value = aws_autoscaling_group.general.id
}

output "min_size" {
    value = aws_autoscaling_group.general.min_size
}

output "max_size" {
    value = aws_autoscaling_group.general.max_size
}

output "desired_capacity" {
    value = aws_autoscaling_group.general.desired_capacity
}

output "azs" {
    value = aws_autoscaling_group.general.availability_zones
}

output "default_cooldown" {
    value = aws_autoscaling_group.general.default_cooldown
}

output "vpc_zone_id" {
    value = aws_autoscaling_group.general.vpc_zone_identifier
}

output "tg_arns" {
    value = aws_autoscaling_group.general.target_group_arns
}