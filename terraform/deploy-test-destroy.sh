#!/bin/bash

# =============================
# Script para criar, testar e destruir a infraestrutura AWS
# Uso seguro para ambientes de estudo
# Autor: Wilson dos Santos Kahango Dala
# =============================

set -e

# Parâmetros reais fornecidos
VPC_ID="vpc-0f2e00b5deae4ff3b"
SUBNET_IDS='["subnet-0b03ceb7df256d47b", "subnet-0c5b02d765b8cd883"]'
SECURITY_GROUP_IDS='["sg-0f778ae6fbf658b8e"]'
ALB_SECURITY_GROUP_IDS='["sg-055f67ce4abea4ade"]'

# Tempo de teste antes da destruição (em segundos)
WAIT_TIME=300  # 5 minutos

echo "📦 Inicializando Terraform..."
terraform init -input=false

echo "📋 Gerando plano..."
terraform plan -input=false \
  -var="vpc_id=$VPC_ID" \
  -var="subnet_ids=$SUBNET_IDS" \
  -var="security_group_ids=$SECURITY_GROUP_IDS" \
  -var="public_subnet_ids=$SUBNET_IDS" \
  -var="alb_security_group_ids=$ALB_SECURITY_GROUP_IDS"

echo "🚀 Aplicando infraestrutura..."
terraform apply -auto-approve \
  -var="vpc_id=$VPC_ID" \
  -var="subnet_ids=$SUBNET_IDS" \
  -var="security_group_ids=$SECURITY_GROUP_IDS" \
  -var="public_subnet_ids=$SUBNET_IDS" \
  -var="alb_security_group_ids=$ALB_SECURITY_GROUP_IDS"

echo "⏱️ Aguardando $WAIT_TIME segundos para testes..."
sleep $WAIT_TIME

echo "💣 Destruindo infraestrutura..."
terraform destroy -auto-approve \
  -var="vpc_id=$VPC_ID" \
  -var="subnet_ids=$SUBNET_IDS" \
  -var="security_group_ids=$SECURITY_GROUP_IDS" \
  -var="public_subnet_ids=$SUBNET_IDS" \
  -var="alb_security_group_ids=$ALB_SECURITY_GROUP_IDS"

echo "✅ Infraestrutura destruída com sucesso. Ambiente limpo."
