# bingo-driven
Sistema para a administração de jogos de bingo.

![demonstração do bingo](demo-bingo.gif)

## Funcionalidades
- Criação de jogos de bingo.
- Geração de números para um jogo (sorteio).
- Finalização de jogos.
- Armazenamento dos jogos e seus números sorteados.

## Links de Deploy
- Back-end: https://projeto-bingo-driven-back-end.onrender.com

## Tecnologias
- Back-end: Node.js, Express, Typescript, Jest e Prisma.
- Banco de dados: Postgres.
- Front-end: React e Vite.

## Desenvolvimento
- Instalação:
  - Instalar as dependências com o `npm i`;
  - Criar o arquivo `.env` com base no exemplo do `.env.example`;
  - Preparar o banco de dados usando o prisma (`prisma migrate dev`);
  - Executar o comando `npm run dev`.
- Para executar os testes:
  - Criar o arquivo `.env.test` com base no exemplo do `.env.example`;
  - Preparar o banco de dados usando o Prisma (`npm run test:migration`);
  - Executar o comando `npm run test`.

## Uso com Docker
- Construir a imagem `docker build -t my-backend .`.
- Subir o banco de dados Postgres `docker network create my-network`.
- Rodar o banco de dados em um container docker `docker run -d --name my-postgres --network my-network -p 5433:5432 -e POSTGRES_PASSWORD=postgres postgres`.
- Subir o back-end em um container docker `docker run -d --name my-backend --network my-network -e DATABASE_URL=postgresql://postgres:postgres@my-postgres:5432/mydb?schema=public -p 5000:5000 my-backend`.


## Uso com Docker Compose
  - Subir o container: `docker compose up -d`.
