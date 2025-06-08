output "ecr_repository_url" {
  value       = aws_ecr_repository.app.repository_url
  description = "URL do repositório ECR da aplicação"
}

output "ecs_cluster_name" {
  value       = aws_ecs_cluster.app.name
  description = "Nome do cluster ECS criado"
}

output "task_definition_arn" {
  value       = aws_ecs_task_definition.app.arn
  description = "ARN da definição de tarefa ECS"
}

output "subnet_ids" {
  value       = [aws_subnet.public_a.id, aws_subnet.public_b.id]
  description = "IDs das subnets públicas criadas"
}

output "security_group_ids" {
  value       = [aws_security_group.app_sg.id]
  description = "IDs dos security groups associados à aplicação"
}

output "alb_dns_name" {
  value       = aws_lb.app.dns_name
  description = "DNS público do Application Load Balancer"
}

output "alb_sg_ids" {
  value = var.alb_security_group_ids
}
