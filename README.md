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

## Dashboard Visão Geral 

<img width="876" height="492" alt="image" src="https://github.com/user-attachments/assets/6c48feb9-2ef4-4090-af54-8c69f21f2d24" />


---
## 📊 Principais Insights do Projeto

###  Visão Geral dos Clientes
- A base analisada é composta por **25.109 clientes**.
- O estado de **São Paulo** concentra a maior quantidade de clientes (**17.864**), evidenciando uma forte presença nessa região.
- O **status profissional CLT** é o mais frequente, com **16.307 clientes**, indicando que a maior parte da base é formada por trabalhadores formalizados.

---

### Perfil Financeiro
- Na análise de **renda média por estado**, **Sergipe** apresentou o maior valor médio.
- Esse resultado ocorre porque o estado possui **apenas um cliente** com renda de **R$ 17.000**, caracterizando um **outlier**.
- Por esse motivo, Sergipe **não representa um padrão real da base** e deve ser analisado com cautela.
- Quando a análise é realizada por **região**, o **Sudeste** concentra a maior quantidade de clientes e apresenta uma **renda média de R$ 7.369**, reforçando sua relevância financeira dentro da base.
- **37% dos clientes possuem score acima da média geral**, indicando uma parcela significativa com bom perfil de crédito.
- O **score médio varia entre os estados**, evidenciando diferenças regionais no perfil de risco dos clientes.

---

### Comportamento dos Clientes
- A análise do funil permite identificar clientes que **visitaram o site** e aqueles que **efetivamente realizaram uma compra**.
- O perfil que mais converte está concentrado no **estado de São Paulo**, principalmente entre clientes com **status profissional CLT**.
- Os dados indicam que **localização geográfica** e **perfil profissional** influenciam diretamente o comportamento de compra.

---

### Impacto para o Negócio
- Os resultados permitem direcionar **ações comerciais e estratégias de marketing** para regiões e perfis com maior potencial de conversão.
- A identificação de **outliers** reforça a importância de avaliar o contexto dos dados antes da tomada de decisões.
- O projeto cria uma base sólida para análises futuras, como:
  - Segmentação de clientes
  - Análise de conversão
  - Monitoramento de métricas ao longo do tempo



## 📁 Estrutura do Repositório
📦 analise-perfil-clientes
 ┣ 📂 sql
 ┃ ┗ 📄 queries.sql
      ┗ readme.md
 ┣ 📂 powerbi
 ┃ ┗ 📄 dashboard.pbix
 ┗ 📄 README.md
