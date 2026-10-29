#!/usr/bin/env bash
# Cria as labels e as issues iniciais do livro no GitHub.
# Exemplo vivo do capítulo 3 (Issues e GitHub Projects).
#
# Pré-requisitos: GitHub CLI (`gh`) instalado e autenticado (`gh auth login`).
# Uso: ./scripts/issues-iniciais.sh
#
# O script é seguro para rodar de novo: labels são atualizadas (--force) e
# issues com o mesmo título já existentes são puladas.

set -euo pipefail

REPO="Garon-Sys/manual-saas"

label() { gh label create "$1" --repo "$REPO" --color "$2" --description "$3" --force >/dev/null; echo "label: $1"; }

label "capitulo"         "1d76db" "Escrever ou reescrever um capítulo"
label "correcao"         "d93f0b" "Erro, link quebrado ou trecho confuso"
label "estrutura"        "5319e7" "Estrutura do livro, ferramenta ou publicação"
label "exemplo-vivo"     "0e8a16" "Configuração do repo que serve de exemplo para um capítulo"
label "parte-1-gestao"   "c5def5" "Parte I — Gestão"
label "parte-2-entrega"  "bfdadc" "Parte II — Entrega"
label "parte-3-operacao" "fef2c0" "Parte III — Operação"
label "good first issue" "7057ff" "Boa para a primeira contribuição"

issue() {
  local titulo="$1" labels="$2" corpo="$3"
  if gh issue list --repo "$REPO" --state all --search "in:title \"$titulo\"" --json title -q '.[].title' | grep -Fxq "$titulo"; then
    echo "já existe: $titulo"
    return
  fi
  gh issue create --repo "$REPO" --title "$titulo" --label "$labels" --body "$corpo" >/dev/null
  echo "criada: $titulo"
}

revisao() {
  local n="$1" titulo="$2" arquivo="$3" parte="$4"
  issue "Revisar o capítulo $n: $titulo" "capitulo,$parte" "Primeira versão em \`$arquivo\`.

## Critérios de aceite
- [ ] Lido do início ao fim no site renderizado
- [ ] Exemplos conferidos e sem detalhes de sistemas reais
- [ ] Caixa \"Neste repositório\" aponta para algo que existe
- [ ] Pelo menos uma pessoa de fora comentou"
}

# Configuração do repositório (exemplos vivos)
issue "Ativar o GitHub Pages com origem GitHub Actions" "estrutura,exemplo-vivo" "Settings → Pages → Source: **GitHub Actions**. Sem isso, o job de publicação do workflow falha.

## Critérios de aceite
- [ ] O livro abre em https://garon-sys.github.io/manual-saas/"
issue "Criar o quadro do livro no GitHub Projects" "estrutura,exemplo-vivo,parte-1-gestao" "Campos, views e automações exatamente como no capítulo 3.

## Critérios de aceite
- [ ] Campos: Status, Prioridade, Parte, Estimativa, Iteração (2 semanas)
- [ ] Views: Backlog (Table), Iteração atual (Board), Roadmap
- [ ] Automações: item adicionado → Backlog; PR aberto → Em revisão; fechado → Feito
- [ ] Projeto público e ligado ao repositório"
issue "Ativar branch protection na main" "estrutura,exemplo-vivo,parte-2-entrega" "Exigir PR e os checks *Renderizar* e *Checar links* antes do merge (capítulo 7)."
issue "Ativar Discussions com categorias de conversa" "estrutura" "Categorias sugeridas: Ideias, Perguntas, Discordâncias, Relatos de uso."
issue "Avaliar a geração de PDF e EPUB" "estrutura" "Ver ADR 0001. Medir o tempo de CI com LaTeX e com o Mermaid renderizado para imagem."

# Revisão dos capítulos
revisao 1  "Método antes de ferramenta"        "capitulos/01-metodo.qmd"            "parte-1-gestao"
revisao 2  "Onde cada coisa mora"              "capitulos/02-onde-mora.qmd"         "parte-1-gestao"
revisao 3  "Issues e GitHub Projects"          "capitulos/03-github-projects.qmd"   "parte-1-gestao"
revisao 4  "Ágil com iterações"                "capitulos/04-agil.qmd"              "parte-1-gestao"
revisao 5  "Documentação"                      "capitulos/05-documentacao.qmd"      "parte-1-gestao"
revisao 6  "Pessoas"                           "capitulos/06-pessoas.qmd"           "parte-1-gestao"
revisao 7  "Fluxo de código e pull requests"   "capitulos/07-fluxo-de-codigo.qmd"   "parte-2-entrega"
revisao 8  "O fluxo no VS Code"                "capitulos/07b-vscode.qmd"           "parte-2-entrega"
revisao 9  "CI/CD e ambientes"                 "capitulos/08-ci-cd.qmd"             "parte-2-entrega"
revisao 10 "Migrações seguras e feature flags" "capitulos/09-migracoes-e-flags.qmd" "parte-2-entrega"
revisao 11 "Observabilidade e alertas"         "capitulos/10-observabilidade.qmd"   "parte-3-operacao"
revisao 12 "Backups, RPO e RTO"                "capitulos/11-backups.qmd"           "parte-3-operacao"
revisao 13 "Incidentes e postmortems"          "capitulos/12-incidentes.qmd"        "parte-3-operacao"
revisao 14 "Segurança, segredos e acessos"     "capitulos/13-seguranca.qmd"         "parte-3-operacao"

issue "Corrigir links e digitação encontrados na primeira leitura" "correcao,good first issue" "Uma issue guarda-chuva para correções pequenas. Comente o que encontrar ou abra um PR direto."

echo "Pronto. Adicione as issues ao quadro do projeto (ou ative a automação de auto-add)."
