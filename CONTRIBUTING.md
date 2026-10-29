# Como contribuir

Obrigado por querer melhorar o livro. Este repositório segue o mesmo fluxo que o livro ensina, então contribuir também é uma forma de praticar.

## Antes de começar

- **Ideia ou discordância grande?** Abra uma Discussion primeiro. Mudar a estrutura do livro pede conversa.
- **Erro, link quebrado, trecho confuso?** Abra uma issue com o template "Correção ou sugestão", ou vá direto ao PR.
- **Escrever um capítulo ou seção?** Procure a issue correspondente no quadro do projeto e comente que vai pegar.

## O fluxo

1. Toda mudança nasce de uma issue (exceto correções de digitação).
2. Crie uma branch curta a partir da `main`: `12-capitulo-incidentes`.
3. Rode `quarto preview` e confira o resultado no navegador.
4. Abra o PR preenchendo o template. Escreva `Closes #12` para a issue fechar no merge.
5. A CI renderiza o livro e checa os links. Só entra com a CI verde.
6. Depois do merge, o livro é publicado automaticamente no GitHub Pages.

## Mensagens de commit

Usamos [Conventional Commits](https://www.conventionalcommits.org/pt-br/), com o capítulo como escopo:

```
docs(cap-03): explica campos personalizados do Projects
fix(cap-08): corrige exemplo do workflow de CI
ci: adiciona checagem de links
chore: atualiza a versão do Quarto
```

## Estilo do texto

- **Português do Brasil**, direto, em segunda pessoa ("você").
- **Comece cada seção pela conclusão.** O porquê vem depois.
- **Frases curtas**, de preferência com menos de 25 palavras.
- **Exemplo concreto sempre que possível**, de preferência apontando para algo real deste repositório.
- **O caso de estudo é o Farol**, um SaaS fictício. Não use nomes, endereços, provedores ou detalhes de infraestrutura de produtos reais.
- **Termos em inglês** consagrados (pull request, deploy, runbook) ficam em inglês; na primeira vez que aparecem, explique e registre no glossário (apêndice D).
- **Diagramas em Mermaid**, dentro do próprio `.qmd`, para que sejam revisados como texto.

## Decisões

Mudanças na estrutura do livro, na ferramenta ou na licença viram um ADR em `adr/`. Use o `adr/0000-template.md`.
