# ADR 0004 — Os exemplos usam um SaaS fictício, o Farol

- **Status:** Aceito
- **Data:** 2026-10-28

## Contexto

O livro nasceu da experiência com um produto real, cujo repositório é privado. Exemplos
concretos ensinam muito mais que exemplos abstratos, mas publicar caminhos internos, provedores,
domínios ou detalhes de segurança de um produto real mapeia a sua superfície de ataque.

## Decisão

Todos os exemplos usam o **Farol**, um SaaS fictício de finanças pessoais com backend em Django,
frontend em React e um agregador bancário fictício. Nenhum nome, endereço, provedor ou detalhe de
infraestrutura de um produto real entra no livro.

## Alternativas consideradas

- **Usar o produto real como caso:** mais autêntico, mas arriscado e difícil de revisar a cada PR.
- **Exemplos genéricos sem produto:** seguros, mas abstratos demais para ensinar.

## Consequências

- Revisores devem barrar, no PR, qualquer detalhe que identifique um sistema real.
- O Farol pode ganhar um repositório de exemplo próprio no futuro, com código de verdade para os
  capítulos de CI, migrações e feature flags.
