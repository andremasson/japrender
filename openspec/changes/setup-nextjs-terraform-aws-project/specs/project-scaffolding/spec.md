## ADDED Requirements

### Requirement: Monorepo Project Structure
O sistema SHALL possuir uma estrutura de monorepo dividida em `web/` (para a aplicação Next.js contendo frontend e backend unificados) e `terraform/` (para a definição e provisionamento dos recursos na AWS).

#### Scenario: Verify Directory Structure
- **WHEN** o desenvolvedor lista o diretório raiz do projeto
- **THEN** os subdiretórios `web/` e `terraform/` devem estar presentes

### Requirement: OpenNext Integration for Next.js Build
O projeto Next.js em `web/` SHALL possuir a configuração necessária para integrar com o `open-next` para converter a compilação do Next.js em funções Lambda compatíveis.

#### Scenario: OpenNext Config Exists
- **WHEN** o comando de build do OpenNext é executado
- **THEN** o pacote `.open-next` com o servidor e os assets estáticos deve ser gerado
