<<<<<<< HEAD
# Trabalho-Faculdade
Subir git pra link no trabalho de sql
=======
# Banco de dados da Biblioteca

Este repositório contém um esquema SQL e dados de exemplo para uma pequena
biblioteca. O objetivo é fornecer um ponto de partida para gerenciar livros,
autores, exemplares, membros e empréstimos. O esquema está escrito para ser
compatível com SQLite.

Arquivos principais:
- `schema.sql`: cria as tabelas e índices.
- `sample_data.sql`: insere dados de exemplo para testes.
- `.gitignore`: ignora arquivos de banco (.db).

Como usar (Windows / PowerShell):

1. Instalar o SQLite (se ainda não tiver). Você pode baixar em https://sqlite.org/download.html

2. Criar o arquivo de banco e importar o schema e os dados:

```powershell
# cria o arquivo library.db e aplica o schema
sqlite3 library.db ".read schema.sql"

# carregar os dados de exemplo
sqlite3 library.db ".read sample_data.sql"

# verificar algumas tabelas
sqlite3 library.db "SELECT id, title FROM books;"
sqlite3 library.db "SELECT id, first_name, last_name FROM authors;"
```

Alternativa: usar um cliente GUI para SQLite (DB Browser for SQLite).

Preparar para subir ao GitHub (PowerShell):

```powershell
git init
git add .
git commit -m "Initial: schema and sample data for library DB"

# criar repositório remoto no GitHub (opcional, usando gh CLI)
# gh repo create my-library-db --public --source=. --remote=origin -y
# git push -u origin main
```



