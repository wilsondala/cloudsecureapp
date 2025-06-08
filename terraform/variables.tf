variable "aws_region" {
  description = "AWS region to deploy the resources"
  type        = string
  default     = "us-east-1"
}

variable "app_name" {
  description = "Name of the application"
  type        = string
  default     = "cloudsecureapp"
}

variable "ecr_repo_name" {
  description = "Name of the ECR repository"
  type        = string
  default     = "cloudsecureapp"
}

variable "image_tag" {
  description = "Tag da imagem Docker no ECR"
  type        = string
  default     = "latest"
}

variable "subnet_ids" {
  description = "List of subnet IDs for ECS service"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs to associate with the ECS service"
  type        = list(string)
}

variable "vpc_id" {
  description = "ID da VPC onde os recursos serão provisionados"
  type        = string
}

variable "public_subnet_ids" {
  description = "Lista de subnets públicas onde o ALB será criado"
  type        = list(string)
}

variable "alb_security_group_ids" {
  description = "Lista de SGs para o ALB"
  type        = list(string)
}

variable "ecs_cluster_name" {
  description = "Nome do ECS cluster"
  type        = string
}
