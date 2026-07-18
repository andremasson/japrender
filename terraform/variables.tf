variable "aws_region" {
  type        = string
  description = "Região AWS padrão para o deploy"
  default     = "us-east-1"
}

variable "project_name" {
  type        = string
  description = "Nome do projeto para prefixo dos recursos"
  default     = "japrender-v2"
}
