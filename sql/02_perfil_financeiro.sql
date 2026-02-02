-- PERFIL FINANCEIRO DOS CLIENTES

-- Renda média por estado
SELECT 
  state,
  AVG(income) AS renda_media
FROM sales.customers
GROUP BY state
ORDER BY renda_media DESC;


-- Análise por região: quantidade de clientes e renda média
SELECT
  reg.region,
  COUNT(cus.customer_id) AS total_clientes,
  AVG(cus.income) AS renda_media
FROM sales.customers AS cus
INNER JOIN temp_tables.regions AS reg
  ON lower(cus.city) = lower(reg.city)
 AND lower(cus.state) = lower(reg.state)
GROUP BY reg.region
ORDER BY total_clientes DESC;


-- Clientes com renda acima de 3 salários mínimos
SELECT 
  customer_id,
  email,
  income / 1200 AS salarios_minimos
FROM sales.customers
WHERE income / 1200 > 3
ORDER BY salarios_minimos ASC;


-- Score médio por estado
SELECT 
  state,
  AVG(score) AS score_medio
FROM sales.customers
GROUP BY state
ORDER BY score_medio DESC;


-- Percentual de clientes com score acima da média geral
SELECT
  COUNT(*) AS total_clientes,
  COUNT(*) FILTER (
    WHERE score > (SELECT AVG(score) FROM sales.customers)
  ) AS clientes_acima_media,
  ROUND(
    COUNT(*) FILTER (
      WHERE score > (SELECT AVG(score) FROM sales.customers)
    ) * 100.0 / COUNT(*),
    2
  ) AS percentual_acima_media
FROM sales.customers;
