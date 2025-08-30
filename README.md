# 🚗 Sistema de Gestão de Ordens de Serviço (OS)

![Badge MySQL](https://img.shields.io/badge/MySQL-8.0-blue?logo=mysql)  
![Badge Status](https://img.shields.io/badge/Status-Concluído-brightgreen)  
![Badge Author](https://img.shields.io/badge/Autor-Paulo%20João%20Dongosse-orange)

---

## 📌 Descrição do Projeto
Este projeto implementa um **sistema de gerenciamento de Ordens de Serviço (OS)** para uma oficina mecânica.  
O objetivo é controlar **clientes (PF e PJ), veículos, serviços, peças, mecânicos, equipes, fornecedores, pagamentos e autorizações de OS**.  

O banco foi modelado e normalizado, permitindo consultas avançadas para apoiar a gestão operacional e financeira da oficina.  

---

## 🎯 Objetivos
- Criar um **esquema lógico de banco de dados relacional** em MySQL.  
- Permitir o **registro de clientes, veículos, ordens de serviço, serviços e peças utilizadas**.  
- Gerar **relatórios estratégicos** com queries SQL complexas (joins, filtros, agregações, etc.).  
- Facilitar a **gestão de pagamentos, autorizações e andamento das OS**.  

---

## 🛠️ Tecnologias Utilizadas
- **MySQL 8.0** – Banco de dados relacional  
- **Workbench / CLI** – Modelagem e execução dos scripts  
- **Git & GitHub** – Controle de versão e portfólio  

---

## 🗄️ Estrutura do Banco de Dados
O banco de dados foi projetado com **17 tabelas** relacionadas entre si, garantindo **integridade referencial**.  

📌 **DER – Diagrama Entidade Relacionamento:**  

![DER do Projeto](./DER%20OS.png)  

---

## 📂 Organização dos Scripts
O projeto está organizado em 3 arquivos principais:  

- `tabelas os.sql` → Criação do banco e tabelas  
- `inserir dados OS.sql` → Inserção de dados fictícios para testes (10 registros por tabela)  
- `consultas em OS.sql` → Conjunto de queries complexas para análise e relatórios  

--- 

## 📝 Exemplos de Consultas SQL

🔹 **1. Quantos pedidos (OS) foram feitos por cada cliente:**  
```sql
select c.id_cliente, count(os.id_os) as total_os
from cliente c
join ordemservico os on c.id_cliente = os.id_cliente
group by c.id_cliente;
