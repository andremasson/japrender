# Variáveis locais que mapeiam a saída do build do OpenNext
locals {
  open_next_dir        = "${path.module}/../web/.open-next"
  server_function_dir  = "${local.open_next_dir}/server-function"
  static_assets_dir    = "${local.open_next_dir}/assets"
}

# Recurso opcional para automatizar o trigger do build do OpenNext
# (Geralmente executado no pipeline de CI/CD, mas útil localmente via Terraform)
resource "null_resource" "open_next_build" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    working_dir = "${path.module}/../web"
    command     = "npm run build:aws"
  }
}
