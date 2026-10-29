# ADR 0003 — Um repositório só, com Gestão, Entrega e Operação

- **Status:** Aceito
- **Data:** 2026-10-28

## Contexto

A ideia inicial previa um repositório para gestão de projetos e outro, depois, para operação.
Mas os assuntos se cruzam: a CI aparece nas duas frentes, todo incidente gera itens de backlog e
os runbooks são documentação.

## Decisão

Um único repositório, dividido em três partes: **Gestão**, **Entrega** e **Operação**, mais
apêndices com templates.

## Alternativas consideradas

- **Dois repositórios:** duplicaria configuração, CI e templates, e quebraria as referências
  cruzadas entre capítulos.

## Consequências

- Um só site, uma só busca, um só quadro de trabalho.
- Se uma parte crescer a ponto de virar outro livro, ela pode sair para um repositório próprio,
  com um novo ADR.
