-- VISÃO GERAL DOS CLIENTES

-- Quantidade total de clientes
SELECT COUNT(customer_id) AS total_clientes
FROM sales.customers;

-- Estados mais frequentes
SELECT
  state,
  COUNT(customer_id) AS quantidade_de_clientes
FROM sales.customers
GROUP BY state
ORDER BY quantidade_de_clientes DESC
LIMIT 5;

-- Status profissional mais comum
SELECT
  professional_status,
  COUNT(customer_id) AS quantidade_de_clientes
FROM sales.customers
GROUP BY professional_status
ORDER BY quantidade_de_clientes DESC
LIMIT 1;
