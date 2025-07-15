
🗃️ Executor de Scripts SQL - Delphi

Este projeto é uma aplicação em **Delphi VCL** que permite selecionar, visualizar e executar múltiplos arquivos `.sql` utilizando a biblioteca **FireDAC**. Ideal para aplicações administrativas, instalação de banco de dados ou execução de scripts em lote.

## ⚙️ Funcionalidades

- 📂 Seleção de múltiplos arquivos `.sql` via `TOpenDialog`;
- 📋 Visualização e edição de scripts SQL em um `TMemo`;
- ✅ Execução dos scripts selecionados em sequência com `TFDScript`;
- 🧾 Log em tempo real com mensagens de execução e erros;
- 🔄 Manutenção ou substituição de arquivos já carregados;
- 💡 Aba de dicas com informações e instruções de uso.

## 🧠 Como Funciona

1. O usuário seleciona um ou mais arquivos `.sql`;
2. Os arquivos são listados em um `TCheckListBox` com marcação individual;
3. Cada script marcado é carregado no `TMemo` e executado com `FDScript.ExecuteAll`;
4. O progresso e os erros são exibidos no `MemoLog`.

## 🖼️ Interface

A interface possui as seguintes seções:

- Painel lateral com botões:
  - 🔘 Selecionar arquivos `.sql`;
  - 🚀 Executar scripts marcados;
- `TPageControl` com abas:
  - 📜 **Script**: visualização do SQL atual;
  - 🧾 **Log**: mensagens de execução e status;
  - 💡 **Dicas**: instruções úteis para o usuário.

## ▶️ Como Executar

1. Abra o projeto no **Delphi (RAD Studio)**;
2. Compile e execute o formulário `TfrmExecutarScript`;
3. Clique em "Selecionar arquivos" e escolha os arquivos `.sql`;
4. Marque os scripts desejados;
5. Clique em "Executar scripts".

## 🔧 Requisitos

- Delphi VCL;
- FireDAC configurado e conectado (`untDmConexao`);
- Banco de dados acessível e permissões adequadas para execução dos scripts.

## 💾 Observações

- Scripts são executados sequencialmente;
- Ao encontrar um erro, a execução é interrompida (ajustável);
- O conteúdo de cada script é carregado antes da execução para exibição no `TMemo`.

## 📃 Licença

Este projeto está licenciado sob a MIT License.

---

Desenvolvido por Janderson Silva.
