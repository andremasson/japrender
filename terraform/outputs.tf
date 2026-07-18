output "lambda_execution_role_arn" {
  value       = aws_iam_role.nextjs_lambda_role.arn
  description = "ARN da role de execução IAM para as Lambdas do Next.js"
}
