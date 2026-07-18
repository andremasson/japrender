## ADDED Requirements

### Requirement: Send Audio for Conversation
O sistema SHALL possuir um endpoint de API (`/api/chat`) para receber um arquivo de áudio gravado em japonês pelo usuário e processá-lo com IA.

#### Scenario: Audio Processing Flow
- **WHEN** o frontend envia uma requisição POST com o arquivo de áudio para `/api/chat`
- **THEN** o backend converte o áudio para texto via STT nativo, envia para o Bedrock (Claude) e retorna a resposta da IA convertida em áudio via AWS Polly

### Requirement: Voice Chat Interface
O frontend SHALL disponibilizar um componente visual mobile-first contendo um botão para gravação de áudio do usuário, exibição do histórico de mensagens e reprodução do áudio de resposta da IA.

#### Scenario: Audio Recording Action
- **WHEN** o usuário mantém pressionado o botão de microfone
- **THEN** o sistema grava o áudio do microfone do dispositivo
