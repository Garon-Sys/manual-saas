# Manual SaaS

Um livro aberto, em português, sobre **gestão e operação de software como serviço para times pequenos**, de 1 a 8 pessoas.

O diferencial é que **este repositório é o próprio exemplo**: ele usa tudo o que ensina. O capítulo sobre GitHub Projects aponta para o quadro deste repo; o capítulo sobre CI aponta para o workflow que publica o livro; os templates de PR e de issue estão em `.github/`; as decisões do livro estão em `adr/`.

📖 **Leia online:** <https://garon-sys.github.io/manual-saas/>

## O que tem aqui

| Parte | Assunto |
| --- | --- |
| I — Gestão | Método, onde cada coisa mora, GitHub Projects, ágil com iterações, documentação, pessoas |
| II — Entrega | Fluxo de código e PRs, o fluxo no VS Code, CI/CD e ambientes, migrações seguras e feature flags |
| III — Operação | Observabilidade, backups, incidentes e postmortems, segurança |
| Apêndices | Templates prontos, plano de implantação, trilha de estudo, glossário |

Os exemplos usam o **Farol**, um SaaS fictício de finanças pessoais com backend em Django e frontend em React. Ele é inventado de propósito: nenhum dado, endereço ou detalhe de infraestrutura de um produto real aparece no livro.

## Como rodar localmente

1. Instale o [Quarto](https://quarto.org/docs/get-started/) (versão 1.5 ou mais nova).
2. Na pasta do repositório:

   ```bash
   quarto preview
   ```

3. O livro abre no navegador e recarrega a cada arquivo salvo.

Para gerar a versão final em `_book/`, use `quarto render`.

## Como contribuir

Comentários de quem trabalha com isso são o que mais melhora o livro.

- **Conversa, opinião, discordância:** abra uma Discussion.
- **Erro ou sugestão pontual:** abra uma issue com o template "Correção ou sugestão".
- **Texto novo ou correção:** abra um PR. O guia está em [CONTRIBUTING.md](CONTRIBUTING.md).

## Licença

- Texto do livro: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.pt-br). Pode copiar e adaptar, desde que cite a fonte.
- Exemplos de código e configuração: [MIT](LICENSE-CODE).

Detalhes em [LICENSE.md](LICENSE.md).
