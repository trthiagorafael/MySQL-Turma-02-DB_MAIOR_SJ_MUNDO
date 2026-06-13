🎉 MySQL Turma 02 - DB Maior São João do Mundo

📖 Sobre o Projeto

Este projeto foi desenvolvido durante o curso MySQL do Básico ao Avançado - Turma 02, ministrado por Thiago Rafael CEO da TR Softwares (Treinamentos e Consultoria em Tecnologia), com o objetivo de aplicar na prática os principais conceitos de modelagem e desenvolvimento de bancos de dados relacionais utilizando MySQL.
O cenário escolhido foi o Maior São João do Mundo, realizado anualmente na cidade de Campina Grande - PB, uma das maiores festas populares do Brasil.
O banco de dados foi projetado para controlar eventos, atrações, artistas, organizadores, ingressos, patrocinadores, palcos e demais informações relacionadas à gestão da festa.
________________________________________

🎯 Objetivos do Projeto

•	Aplicar conceitos de Modelagem de Dados.
•	Desenvolver Diagramas Conceituais, Lógicos e Físicos.
•	Criar um banco de dados relacional completo.
•	Trabalhar relacionamentos 1:1, 1 e N.
•	Aplicar Integridade Referencial.
•	Utilizar chaves primárias e estrangeiras.
•	Desenvolver consultas SQL para extração de informações.
•	Simular um cenário real de gestão de eventos.
________________________________________

🏗️ Modelagem do Banco de Dados

O projeto foi dividido em três etapas:
1️⃣ Modelo Conceitual
Representação das entidades do negócio sem preocupação com implementação.
Principais entidades:
•	Artistas
•	Eventos
•	Organizadores
•	Atrações
•	Gênero Musical
________________________________________

2️⃣ Modelo Lógico
Conversão do modelo conceitual para um modelo relacional.
Exemplos:
Tabela	Descrição
artistas	Cadastro de artistas
eventos	Cadastro dos eventos
atracoes	Programação das apresentações
organizadores	Responsáveis pelos eventos
genero_musical	Cadastro dos diversos gêneros musicais
________________________________________

3️⃣ Modelo Físico

Implementação em MySQL utilizando:
•	CREATE DATABASE
•	CREATE TABLE
•	PRIMARY KEY
•	FOREIGN KEY
•	INDEX
•	AUTO_INCREMENT
•	UNIQUE
•	CHECK
•	DEFAULT
________________________________________

📂 Estrutura do Projeto

MySQL-Turma-02-DB_MAIOR_SJ_MUNDO/

├── Modelo_Conceitual/
│   └── DER.png
│
├── Modelo_Logico/
│   └── Modelo_Logico.png
│
├── Modelo_Fisico/
│   └── DB_MAIOR_SJ_MUNDO.sql
├── Scripts/
│   ├── 01 - TB_GENERO_MUSICAL.sql
│   ├── 02 - TB_ARTISTA_ERRO.sql
│   ├── 02 - TB_ARTISTA - NORMAL.sql
│   ├── 02 - TB_ARTISTA.sql
│   └── 03 - TB_ORGANIZADOR.sql
│   └── 04 - TB_EVENTO.sql
│   └── 05 - TB_ATRACAO_ERRO.sql
│   └── 05 - TB_ATRACAO ANINHADO.sql
└── README.md
________________________________________

🗄️ Principais Tabelas

artistas

Armazena os artistas que participam dos eventos.
Campos principais:
•	id_artista
•	nome_artistico
•	genero_musical
•	cidade
•	estado
•	instagram
•	site
________________________________________

eventos

Representa cada evento cadastrado.
Campos principais:
•	id_evento
•	nome
•	data_inicio
•	data_final
•	local
•	cidade
•	estado
•	capacidade_total
•	id_organizador
________________________________________

atracao

Relaciona artistas aos eventos.
Campos principais:
•	id_atracao
•	id_artista
•	id_evento
•	data
•	hora
•	duracao
________________________________________

organizador

Responsáveis pela realização dos eventos.
Campos principais:
•	id_organizador
•	nome
•	telefone
•	email
________________________________________

🔗 Relacionamentos

Organizador → Evento
Um organizador pode organizar vários eventos.
Organizador (1) ------ (N) Evento
Evento → Atração
Um evento possui várias atrações.
Evento (1) ------ (N) Atração
Artista → Atração
Um artista pode participar de vários eventos.
Artista (1) ------ (N) Atração
________________________________________

🚀 Como Executar

executar diretamente pelo:
•	MySQL Workbench
•	HeidiSQL
•	DBeaver
________________________________________

📊 Consultas de Exemplo
Quantidade de artistas por evento
SELECT
    e.nome,
    COUNT(*) AS total_artistas
FROM atracoes a
INNER JOIN eventos e
    ON a.id_evento = e.id_evento
GROUP BY e.nome;
________________________________________

Programação de um evento
SELECT
    e.nome,
    ar.nome_artistico,
    a.data,
    a.hora
FROM atracoes a
INNER JOIN artistas ar
    ON a.id_artista = ar.id_artista
INNER JOIN eventos e
    ON a.id_evento = e.id_evento;
________________________________________

Total de eventos por cidade
SELECT
    cidade,
    COUNT(*) total_eventos
FROM eventos
GROUP BY cidade;
________________________________________
🎓 Conceitos Trabalhados
•	Modelagem Conceitual
•	Modelagem Lógica
•	Modelagem Física
•	Chaves Primárias
•	Chaves Estrangeiras
•	Normalização
•	Integridade Referencial
•	Joins
•	Views
•	Procedures
•	Triggers
•	Índices
•	Boas práticas de modelagem
________________________________________

🛠️ Ferramentas Utilizadas
•	MySQL 9.x
•	MySQL Workbench
•	HeidiSQL
•	Git
•	GitHub
________________________________________

👨‍🏫 Curso

Projeto desenvolvido durante o curso:
MySQL do Básico ao Avançado – Turma 02
Instrutor:
Thiago Rafael
Engenheiro de Dados | Professor | Especialista em Banco de Dados
________________________________________

📜 Licença
Este projeto possui finalidade exclusivamente educacional e pode ser utilizado livremente para estudos, práticas e aperfeiçoamento de conhecimentos em banco de dados relacionais.
