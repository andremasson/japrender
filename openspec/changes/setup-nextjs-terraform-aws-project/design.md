## Context

O projeto Japrender-v2.0 visa fornecer uma aplicação web móvel-first para conversação em japonês. Para maximizar a agilidade no desenvolvimento e a tipagem estática integrada, foi escolhida a arquitetura Next.js Monorepo (Opção A), onde o frontend e o backend de APIs residem no mesmo repositório e são empacotados para a AWS via OpenNext e provisionados com Terraform.

## Goals / Non-Goals

**Goals:**
- Configurar o scaffolding do Next.js (App Router, Tailwind CSS, TypeScript).
- Estruturar a pasta `terraform/` com as configurações para deploy utilizando OpenNext.
- Provisionar os recursos auxiliares mínimos (permissões para Polly e Bedrock).

**Non-Goals:**
- Implementação detalhada da lógica de chat com IA e integração do microfone do usuário (será feito nas tarefas de codificação posteriores).
- Configuração de domínio customizado HTTPS de produção (será usado o endpoint padrão do CloudFront/API Gateway gerado pelo OpenNext para teste).

## Decisions

### 1. Ferramenta de Adaptação Next.js-para-AWS: OpenNext
*   **Decisão:** Usar `open-next` para gerar o pacote de build compatível com AWS Lambda.
*   **Alternativas Consideradas:** Vercel (limita o deploy fora da Vercel) ou SST v3 (Ion) diretamente. Escolhemos OpenNext + Terraform puro para manter o controle total da infraestrutura no Terraform.

### 2. AWS Polly & Bedrock no Backend Next.js
*   **Decisão:** Os endpoints de rota de API Next.js (`web/src/app/api/...`) usarão o AWS SDK (`@aws-sdk/client-polly` e `@aws-sdk/client-bedrock-runtime`) executados em Lambdas com permissões concedidas via roles do IAM do Terraform.
*   **Alternativas Consideradas:** Usar Lambdas avulsas fora do Next.js. Descartado para facilitar o monorepo.

## Risks / Trade-offs

- **[Risk] Cold Starts da Lambda do Next.js** → **Mitigação**: Manter o pacote do Next.js leve e utilizar a versão mais recente do Node.js suportada pela AWS.
- **[Risk] Complexidade de configuração do Terraform com OpenNext** → **Mitigação**: Utilizar o repositório oficial de módulos do OpenNext para Terraform como base ou gerar os scripts necessários para o empacotamento.
