# Dashboard – Análise de Perfil de Clientes (Power BI)

## Visão Geral
Este dashboard foi desenvolvido no **Power BI** com o objetivo de visualizar e explorar os dados de clientes analisados previamente em SQL.

A proposta é transformar as informações do banco de dados PostgreSQL em **indicadores visuais claros**, facilitando a análise do perfil dos clientes, aspectos financeiros e padrões de comportamento.

<img width="876" height="492" alt="image" src="https://github.com/user-attachments/assets/04396494-f53d-4901-910e-c0f34a96eff9" />

---

## Fonte de Dados
- Banco de dados: **PostgreSQL**
- Schemas utilizados:
  - `sales.customers`
  - `sales.funnel`
  - `temp_tables.regions`

A conexão foi realizada diretamente do Power BI com o PostgreSQL, permitindo atualização dos dados sempre que necessário.

---

## Modelagem de Dados
- Relacionamento entre:
  - `sales.customers` → `sales.funnel`  
    - Cardinalidade: muitos para um  
    - Direção do filtro: único
- Relacionamento criado entre:
  - `sales.customers` ↔ `temp_tables.regions`  
    - Chaves: `city` e `state`
- Revisão de colunas, tipos de dados e integridade no **Power Query**

---

## Transformações Realizadas
- Verificação e ajuste de tipos de dados
- Padronização de colunas de texto (cidade e estado)
- Validação de valores nulos
- Criação de medidas e KPIs no Power BI

---

## KPIs Criados
- **Total de Clientes**
- **Renda Média**
- **Score Médio**

Todos os indicadores foram criados como medidas no Power BI, permitindo interação com filtros e segmentações.

---

## Visualizações
O dashboard inclui:
- KPIs de visão geral
- Gráficos de distribuição por estado e região
- Análise de renda e score
- Segmentações interativas (filtros)
- Botão de limpeza de filtros
## Objetivo do Dashboard
- Facilitar a análise do perfil dos clientes
- Apoiar decisões estratégicas com base em dados
- Demonstrar habilidades em modelagem e visualização no Power BI
