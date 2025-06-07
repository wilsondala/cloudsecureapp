output "ecr_repository_url" {
  value = aws_ecr_repository.app.repository_url
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.app.name
}

output "task_definition_arn" {
  value = aws_ecs_task_definition.app.arn
}

output "subnet_ids" {
  value = [aws_subnet.public_a.id, aws_subnet.public_b.id]
}

output "security_group_ids" {
  value = [aws_security_group.app_sg.id]
}

output "alb_dns_name" {
  value = aws_lb.app.dns_name
}
