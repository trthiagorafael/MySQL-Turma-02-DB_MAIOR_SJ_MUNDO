# 🎉 MySQL Turma 02 - DB Maior São João do Mundo

## 📖 Sobre o Projeto

Este projeto foi desenvolvido durante o curso **MySQL do Básico ao Avançado - Turma 02**, ministrado por **Thiago Rafael**, CEO da **TR Softwares (Treinamentos e Consultoria em Tecnologia)**, com o objetivo de aplicar na prática os principais conceitos de modelagem e desenvolvimento de bancos de dados relacionais utilizando MySQL.

O cenário escolhido foi o **Maior São João do Mundo**, realizado anualmente na cidade de **Campina Grande - PB**, uma das maiores festas populares do Brasil.

O banco de dados foi projetado para controlar:

* 🎤 Artistas
* 🎉 Eventos
* 🎵 Atrações
* 👨‍💼 Organizadores
* 🎼 Gêneros Musicais

---

# 🎯 Objetivos do Projeto

* Aplicar conceitos de Modelagem de Dados
* Desenvolver Diagramas Conceituais, Lógicos e Físicos
* Criar um banco de dados relacional completo
* Trabalhar relacionamentos 1:1, 1:N e N:N
* Aplicar Integridade Referencial
* Utilizar Chaves Primárias e Estrangeiras
* Desenvolver consultas SQL para extração de informações
* Simular um cenário real de gestão de eventos

---

# 🏗️ Modelagem do Banco de Dados

O projeto foi dividido em três etapas:

## 1️⃣ Modelo Conceitual

Representação das entidades do negócio sem preocupação com implementação.

### Principais Entidades

* Artistas
* Eventos
* Organizadores
* Atrações
* Gênero Musical

---

## 2️⃣ Modelo Lógico

Conversão do modelo conceitual para um modelo relacional.

<p align="center">
  <img src="DER DB_MAIOR_SJ_MUNDO.png" alt="DER DB_MAIOR_SJ_MUNDO" width="900">
</p>

<p align="center">
  <img src="DER MAIOR SÃO JOÃO DO MUNDO.png" alt="DER Conceitual" width="900">
</p>

| Tabela         | Descrição                     |
| -------------- | ----------------------------- |
| artistas       | Cadastro de artistas          |
| eventos        | Cadastro dos eventos          |
| atracao        | Programação das apresentações |
| organizador    | Responsáveis pelos eventos    |
| genero_musical | Cadastro dos gêneros musicais |

---

## 3️⃣ Modelo Físico

Implementação em MySQL utilizando:

```sql
CREATE DATABASE
CREATE TABLE
PRIMARY KEY
FOREIGN KEY
INDEX
AUTO_INCREMENT
UNIQUE
CHECK
DEFAULT
```

---

# 📂 Estrutura do Projeto

```text
MySQL-Turma-02-DB_MAIOR_SJ_MUNDO/

├── Modelo_Conceitual/
│   └── DER.png
│
├── Modelo_Logico/
│   └── Modelo_Logico.png
│
├── Modelo_Fisico/
│   └── DB_MAIOR_SJ_MUNDO.sql
│
├── Scripts/
│   ├── 01 - TB_GENERO_MUSICAL.sql
│   ├── 02 - TB_ARTISTA_ERRO.sql
│   ├── 02 - TB_ARTISTA_NORMAL.sql
│   ├── 02 - TB_ARTISTA.sql
│   ├── 03 - TB_ORGANIZADOR.sql
│   ├── 04 - TB_EVENTO.sql
│   ├── 05 - TB_ATRACAO_ERRO.sql
│   └── 05 - TB_ATRACAO_ANINHADO.sql
│
└── README.md
```

---

# 🗄️ Principais Tabelas

## 🎤 ARTISTA

Armazena os artistas participantes dos eventos.

### Campos Principais

| Campo          |
| -------------- |
| id_artista     |
| nome_artistico |
| genero_musical |
| cidade         |
| estado         |
| instagram      |
| site           |

---

## 🎉 EVENTO

Representa cada evento cadastrado.

### Campos Principais

| Campo            |
| ---------------- |
| id_evento        |
| nome             |
| data_inicio      |
| data_final       |
| local            |
| cidade           |
| estado           |
| capacidade_total |
| id_organizador   |

---

## 🎵 ATRACAO

Relaciona artistas aos eventos.

### Campos Principais

| Campo      |
| ---------- |
| id_atracao |
| id_artista |
| id_evento  |
| data       |
| hora       |
| duracao    |

---

## 👨‍💼 ORGANIZADOR

Responsáveis pela realização dos eventos.

### Campos Principais

| Campo          |
| -------------- |
| id_organizador |
| nome           |
| telefone       |
| email          |

---

# 🔗 Relacionamentos

## Organizador → Evento

Um organizador pode organizar vários eventos.

```text
ORGANIZADOR (1) ────────< EVENTO (N)
```

---

## Evento → Atração

Um evento pode possuir várias atrações.

```text
EVENTO (1) ────────< ATRACAO (N)
```

---

## Artista → Atração

Um artista pode participar de vários eventos.

```text
ARTISTA (1) ────────< ATRACAO (N)
```

---

# 🚀 Como Executar

Execute os scripts utilizando uma das ferramentas abaixo:

* MySQL Workbench
* HeidiSQL
* DBeaver

---

# 📊 Consultas de Exemplo

## Quantidade de Artistas por Evento

```sql
SELECT
    e.nome,
    COUNT(*) AS total_artistas
FROM atracao a
INNER JOIN evento e
    ON a.id_evento = e.id_evento
GROUP BY e.nome;
```

---

## Programação de um Evento

```sql
SELECT
    e.nome,
    ar.nome_artistico,
    a.data,
    a.hora
FROM atracao a
INNER JOIN artista ar
    ON a.id_artista = ar.id_artista
INNER JOIN evento e
    ON a.id_evento = e.id_evento;
```

---

## Total de Eventos por Cidade

```sql
SELECT
    cidade,
    COUNT(*) AS total_eventos
FROM evento
GROUP BY cidade;
```

---

# 🎓 Conceitos Trabalhados

* Modelagem Conceitual
* Modelagem Lógica
* Modelagem Física
* Chaves Primárias
* Chaves Estrangeiras
* Normalização
* Integridade Referencial
* Joins
* Views
* Procedures
* Triggers
* Índices
* Boas Práticas de Modelagem

---

# 🛠️ Ferramentas Utilizadas

* MySQL 9.x
* MySQL Workbench
* HeidiSQL
* Git
* GitHub

---

# 👨‍🏫 Curso

Projeto desenvolvido durante o curso:

## MySQL do Básico ao Avançado – Turma 02

**Instrutor:** Thiago Rafael

* Engenheiro de Dados
* Professor
* Especialista em Banco de Dados
* CEO da TR Softwares

---

# 📜 Licença

Este projeto possui finalidade exclusivamente educacional e pode ser utilizado livremente para estudos, práticas e aperfeiçoamento de conhecimentos em bancos de dados relacionais.

---

⭐ Caso este projeto tenha contribuído para seus estudos, considere deixar uma estrela no repositório.
