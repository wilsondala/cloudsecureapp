aws_region             = "us-east-1"
app_name               = "cloudsecureapp"
ecr_repo_name          = "cloudsecureapp"

public_subnet_ids      = ["subnet-0d2cc625d26519af2", "subnet-0b38f9631a7501693"]
subnet_ids             = ["subnet-0d2cc625d26519af2", "subnet-0b38f9631a7501693"]

security_group_ids     = ["sg-0ead3fc90ef8265b0"]
alb_security_group_ids = ["sg-0045c8fecfa639357"]

vpc_id                 = "vpc-03b8ede54cd73dfde"

task_definition_arn    = "arn:aws:ecs:us-east-1:202853071953:task-definition/cloudsecureapp:14"