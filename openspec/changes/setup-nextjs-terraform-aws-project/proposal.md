## Why

O objetivo deste projeto é criar uma aplicação móvel-first para prática de conversação em japonês usando inteligência artificial generativa. A arquitetura escolhida (Opção A) unifica o frontend (React/Next.js) e o backend (API Route Handlers) em um único projeto executado em AWS Lambda, usando Terraform e OpenNext para o provisionamento e deploy, e serviços nativos da AWS (Amazon Bedrock e AWS Polly) para IA e síntese de voz.

## What Changes

Esta é uma mudança inicial que cria a estrutura básica do projeto sem modificar bases de código existentes. Ela introduz:
- A estrutura de diretórios (`web/` para Next.js e `terraform/` para infraestrutura).
- Arquivos de configuração iniciais (TypeScript, Next.js, ESLint).
- Módulos Terraform iniciais para provisionamento do AWS Polly, Amazon Bedrock, S3 e empacotamento com OpenNext.

## Capabilities

### New Capabilities
- `project-scaffolding`: Configuração inicial do monorepo contendo Next.js (`web/`) e Terraform (`terraform/`) integrado ao OpenNext.
- `audio-chat-core`: Fluxo de processamento de áudio (gravação no front, envio para API Next.js, orquestração com AWS Polly para conversão de texto-para-voz, e Amazon Bedrock para a conversação em japonês).

### Modified Capabilities
*Nenhuma (projeto novo).*

## Impact

- **Estrutura de diretórios:** Criação das pastas `web/` e `terraform/`.
- **Dependências de Infraestrutura:** Dependência de credenciais AWS com permissões para Amazon Bedrock (Claude), AWS Polly, Lambda, S3, API Gateway e CloudFront.
- **Ferramentas de Build:** Introdução do `open-next` para converter a build do Next.js para o formato compatível com AWS Lambda.
