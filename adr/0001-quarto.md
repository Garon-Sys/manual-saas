# ADR 0001 — O livro é escrito em Quarto e publicado no GitHub Pages

- **Status:** Aceito
- **Data:** 2026-10-28

## Contexto

O livro precisa ser escrito em Markdown, versionado no Git, revisado por PR, publicado como site e,
talvez no futuro, gerado como PDF ou EPUB. Os diagramas devem ser texto (Mermaid) para serem
revisados no PR como qualquer outra mudança.

## Decisão

Usar o [Quarto](https://quarto.org/) no modo `book`, com publicação automática no GitHub Pages
por um workflow do GitHub Actions a cada merge na `main`.

## Alternativas consideradas

- **MkDocs Material:** excelente para documentação técnica e com busca muito boa, mas não gera
  PDF e EPUB de livro sem plugins de terceiros.
- **mdBook:** simples e rápido, mas com menos recursos de livro (partes, apêndices, referências
  cruzadas) e sem saída em PDF nativa.
- **Docusaurus:** poderoso, mas exige o ecossistema Node e é pensado para documentação de
  produto, não para livro.

## Consequências

- O mesmo fonte pode gerar site, PDF e EPUB. Por ora só o HTML está ligado em `_quarto.yml`;
  PDF exige LaTeX e EPUB com diagramas exige renderizar o Mermaid para imagem, o que deixa a
  CI mais lenta. Ligamos quando houver demanda.
- Quem contribui precisa instalar o Quarto para pré-visualizar. A edição pelo navegador no
  GitHub continua funcionando para correções pequenas.
