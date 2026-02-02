-- COMPORTAMENTO DOS CLIENTES

-- Clientes que visitaram o site
SELECT 
  cus.customer_id,
  cus.email,
  cus.cpf,
  cus.state,
  cus.city,
  fun.visit_page_date
FROM sales.customers AS cus
INNER JOIN sales.funnel AS fun
  ON cus.customer_id = fun.customer_id
WHERE fun.visit_page_date IS NOT NULL;


-- Clientes que realizaram compras
SELECT 
  cus.customer_id,
  cus.email,
  cus.cpf,
  cus.state,
  cus.city,
  fun.paid_date
FROM sales.customers AS cus
INNER JOIN sales.funnel AS fun
  ON cus.customer_id = fun.customer_id
WHERE fun.paid_date IS NOT NULL;


-- Perfil de quem mais converte (estado e status profissional)
SELECT 
  cus.state,
  cus.professional_status,
  COUNT(fun.paid_date) AS clientes_que_compraram
FROM sales.customers AS cus
INNER JOIN sales.funnel AS fun
  ON cus.customer_id = fun.customer_id
WHERE fun.paid_date IS NOT NULL
GROUP BY cus.state, cus.professional_status
ORDER BY clientes_que_compraram DESC;
