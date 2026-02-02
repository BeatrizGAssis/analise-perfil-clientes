# Análise do Perfil de Clientes

## 📌 Objetivo do Projeto
Este projeto tem como objetivo analisar o perfil de clientes utilizando SQL (PostgreSQL) para exploração e tratamento dos dados, e Power BI para visualização das informações por meio de graficos e KPIs.

O foco da análise é entender características demográficas, financeiras e comportamentais dos clientes, apoiando a tomada de decisão baseada em dados.

---

## Base de Dados
Os dados utilizados são fictícios e estão organizados nas seguintes tabelas:

- **sales.customers**: informações cadastrais, renda, score e status profissional dos clientes  
- **sales.funnel**: dados de comportamento dos clientes (visitas e compras)  
- **temp_tables.regions**: mapeamento de cidades, estados e regiões  

---

## Ferramentas Utilizadas
- **PostgreSQL** — consultas SQL e análises exploratórias  
- **Power BI** — construção de dashboards e indicadores  
- **GitHub** — versionamento e documentação do projeto  

---

## Análises Realizadas (SQL)
As principais análises desenvolvidas em SQL incluem:

- Quantidade total de clientes  
- Estados e regiões com maior concentração de clientes  
- Perfil financeiro (renda média, score médio, salários mínimos)  
- Percentual de clientes com score acima da média  
- Análise de comportamento: clientes que visitaram e que realizaram compras  
- Perfil dos clientes com maior conversão  

As consultas SQL estão organizadas na pasta `/sql`.

---

## Dashboard (Power BI)
No Power BI, os dados foram conectados ao banco e tratados para criação de indicadores e visualizações, como:

- Distribuição de clientes por estado e região  
- Renda média e score médio  
- Taxa de conversão de visitantes em compradores  
- KPIs principais para acompanhamento do perfil de clientes  

O arquivo do Power BI está disponível na pasta `/powerbi`.

---

## 📁 Estrutura do Repositório
📦 analise-perfil-clientes
 ┣ 📂 sql
 ┃ ┗ 📄 queries.sql
 ┣ 📂 powerbi
 ┃ ┗ 📄 dashboard.pbix
 ┗ 📄 README.md
