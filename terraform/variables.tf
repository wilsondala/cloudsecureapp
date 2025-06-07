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

variable "subnet_ids" {
  description = "List of subnet IDs for ECS service"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs to associate with the ECS service"
  type        = list(string)
}
