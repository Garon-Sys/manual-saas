# ADR 0002 — Texto em CC BY 4.0, código em MIT

- **Status:** Aceito
- **Data:** 2026-10-28

## Contexto

O livro é público e quer servir de referência: as pessoas devem poder citar, adaptar e copiar os
templates para os seus projetos. Sem licença explícita, nada disso é permitido legalmente.

## Decisão

O texto fica sob **CC BY 4.0** (uso livre com atribuição). Os exemplos de código, workflows,
templates e scripts ficam sob **MIT**, para serem copiados sem exigência de atribuição visível
dentro do projeto de quem usa.

## Alternativas consideradas

- **CC BY-SA para o texto:** obrigaria versões derivadas a usar a mesma licença, o que dificulta
  um eventual livro impresso por editora.
- **CC BY-NC:** impediria o uso em treinamentos pagos e consultorias, que é exatamente um dos
  públicos.
- **Uma licença só:** CC não é adequada para código, e MIT não é adequada para texto.

## Consequências

- Contribuições entram sob as mesmas licenças; o `CONTRIBUTING.md` e o template de PR deixam isso implícito.
- Um livro futuro continua possível, inclusive comercial.
