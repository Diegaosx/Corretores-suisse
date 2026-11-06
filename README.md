# Corretores-suisse (TrustCore & Anitta)

Plataforma completa de cotação, comparação e contratação de seguros para o mercado suíço (seguro básico obrigatório **LAMal / KVG** e seguros complementares **LCA / VVG**), acompanhada por um assistente de voz e inteligência artificial para corretores (**Anitta**).

---

## 🏛️ Visão Geral da Arquitetura

O ecossistema é formado por 4 camadas principais:

```mermaid
flowchart TD
    subgraph Clientes ["Acessos e Clientes"]
        WEB["Painel Web (Angular 15 / Nebular)<br/>Admins, Corretores e Segurados"]
        APP["App Mobile Anitta (Flutter / iOS / Android)<br/>Assistente de Voz IA para Corretores"]
    end

    subgraph Core ["Núcleo da Aplicação"]
        API["TrustCore Backend (Laravel 11 / PHP 8.2+)<br/>API REST, Autenticação Sanctum"]
        ENGINE["Motor Collections (DDL on-demand)<br/>Criação de campos e produtos sem migração"]
        DB[("MySQL 8 (InnoDB)<br/>97 tabelas, 82 coleções")]
    end

    subgraph Automacao ["Pipeline de Emissão (RPA)"]
        PA_CLOUD["Power Automate Cloud Flow"]
        PA_ROBOT["Power Automate Desktop (Robô RPA)<br/>Executa cotação nos portais das seguradoras"]
        PORTALS["Portais de Seguradoras (ex: Groupe Mutuel)"]
        SMS_RELAY["Relé de SMS / OTP 2FA<br/>(/api/incoming/sms -> /api/latest-otp)"]
    end

    WEB -->|JSON / Bearer Token| API
    APP -->|JSON / Bearer Token| API
    API <--> ENGINE
    ENGINE <--> DB
    API -->|Disparo de Proposta (OfferID)| PA_CLOUD
    PA_CLOUD --> PA_ROBOT
    PA_ROBOT <--> PORTALS
    SMS_RELAY <--> PA_ROBOT
    PA_ROBOT -->|Upload do PDF gerado| API
    PA_ROBOT -->|Envio de e-mail com PDF| Clientes
```

---

## 📂 Estrutura do Repositório

```
Corretores-suisse/
├── backend/          # API REST em Laravel 11.31 (PHP 8.2+, Sanctum 4)
├── frontend/         # Painel administrativo e corretor em Angular 15.2 (Nebular 11)
├── mobile-anitta/    # App mobile Flutter/Dart com assistente de voz e IA
├── database/         # Dump oficial de produção MySQL 8 (TrustcoreDB.sql)
├── automation/       # Fluxo Power Automate Cloud + Definições JSON
├── docs/             # Manuais técnicos de referência (PDF) e guias (Word)
├── TrustCore/        # Pacotes originais (.zip) preservados como backup
└── README.md         # Documentação central do projeto
```

---

## 🔍 Diagnóstico Técnico do Sistema

### 1. O que já está implementado e funcional
* **Motor Collections:** 82 coleções registradas com esquemas flexíveis (`offers_meta`, `health_insurer_meta`, `user_meta`, etc.). Campos adicionados via UI viram colunas reais SQL instantaneamente através da convenção gramatical (`rel_..._col_...`, `text_`, `date_`, `boolean_`, `_req`).
* **Frontend Web (Angular):** Sistema completo de telas para ofertas, segurados, produtos, templates e construtor de blueprints, com suporte a 4 idiomas (EN, FR, DE, IT).
* **Base de Dados Real:** Exportação com 97 tabelas contendo histórico de 52 propostas emitidas (40 concluídas com PDFs reais salvos no disco, 11 erros no robô e 2 pendentes), 23 usuários e 35 templates de seguros suíços.
* **App Mobile Anitta:** Reconhecimento de fala no dialeto local (`de-CH`, `de-DE`, `en-US`, `pt-PT`), integração com OpenAI TTS (voz neural *nova*) e listagem de templates e clientes para emissão de propostas.
* **Relé de SMS/OTP:** Mecanismo funcional para capturar código de 2 fatores enviado por SMS pela seguradora e alimentar o robô RPA.

---

### 2. O que precisa ser corrigido e finalizado

#### 🔒 A. Segurança e Controle de Acesso
1. **Autorização Real no Backend:** Substituir a leitura de `current_role` e `current_user_id` (que eram enviados na query string pelo frontend) por `$request->user()` direto do token Sanctum autenticado.
2. **Proteção dos Webhooks:** Implementar verificação de assinatura HMAC/Secret nos endpoints `/api/webhook/offer-update/{id}` e `/api/webhook/offer-status-update`.
3. **Criptografia de Credenciais de Seguradoras:** Criptografar as senhas salvas em `insurance_companies_meta.text_password_req` com o `Crypt` do Laravel.
4. **Remoção de Segredos do Código:**
   - App Anitta: remover API key da OpenAI e token Bearer que estavam no código Dart.
   - Backend: mover a URL do gatilho do Power Automate (`OFFER_FLOW_URL`) para o `.env`.

#### ⚡ B. Automação e Resiliência do Robô (RPA)
1. **Fila Assíncrona no Laravel:** Despachar a execução da proposta via Queue/Job assíncrono para não bloquear a requisição web do corretor.
2. **Tratamento de Timeouts e Alertas:** Adicionar rotina de verificação para que propostas que fiquem presas em `Creating Offer` sejam marcadas como `Timeout` e gerem notificação.
3. **Correção dos Endpoints de Retorno do Fluxo:** Corrigir as URLs no pacote do Power Automate para apontar para o domínio definitivo em vez de servidores legados (`trustcode.techsolsint.com`).

#### 📱 C. Aperfeiçoamento do App Mobile Anitta
1. **Function / Tool Calling na IA:** Permitir que o corretor solicite por voz a criação da proposta (ex: *"Anitta, crie uma proposta KVG da Groupe Mutuel para o cliente Anna Müller"*), e a IA chame a função automaticamente.
2. **Configuração de Ambiente Dinâmica:** Parametrizar a URL base da API do TrustCore em vez de hardcode.

---

## 🚀 Como Executar Localmente

### 1. Banco de Dados (MySQL 8)
```bash
mysql -u root -p -e "CREATE DATABASE trustcore CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
mysql -u root -p trustcore < database/TrustcoreDB.sql
```
> **Nota:** Não execute `php artisan migrate` sobre o banco importado, pois as tabelas já existem e algumas migrações antigas estão defasadas.

### 2. Backend (Laravel 11)
```bash
cd backend
composer install
cp .env.example .env
php artisan key:generate
php artisan storage:link
php artisan serve --host=127.0.0.1 --port=8000
```

### 3. Frontend (Angular 15)
*Necessita de Node 18:*
```bash
cd frontend
npm install --legacy-peer-deps
npx ng serve
# Acesso em http://localhost:4200
```

### 4. App Mobile (Flutter)
```bash
cd mobile-anitta
flutter pub get
flutter run
```

---

## 🗺️ Roteiro de Entrega (Roadmap)

- [ ] **Sprint 1 (Segurança & Fundação):**
  - [ ] Blindagem dos endpoints de usuários e regras de perfil com Sanctum policies.
  - [ ] Proteção dos webhooks com segredo compartilhado.
  - [ ] Configuração do `.env` com todas as variáveis desacopladas.
- [ ] **Sprint 2 (Pipeline de Ofertas & Fila):**
  - [ ] Implementação de Job em fila para disparo do robô RPA.
  - [ ] Correção do callback do Power Automate para o host correto.
  - [ ] Rotina de timeout e re-tentativa de propostas pendentes.
- [ ] **Sprint 3 (Finalização do App Anitta):**
  - [ ] Implementação de Tool Calling no assistente de IA.
  - [ ] Login individual por corretor no app móvel.
- [ ] **Sprint 4 (Homologação & Deploy):**
  - [ ] Deploy em servidor de homologação/produção e testes ponta a ponta com as seguradoras suíças.
