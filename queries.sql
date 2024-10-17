-- 1. Listar todos os Clientes que não tenham realizado uma compra
SELECT c.customer_id, c.first_name, c.last_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- 2. Listar os Produtos que não tenham sido comprados
SELECT p.product_id, p.product_name
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.order_id IS NULL;

-- 3. Listar os Produtos sem Estoque
SELECT p.product_id, p.product_name
FROM products p
JOIN stocks s ON p.product_id = s.product_id
WHERE s.quantity = 0;

-- 4. Agrupar a quantidade de vendas por Marca por Loja
SELECT b.brand_name, s.store_name, COUNT(oi.product_id) AS total_sales
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN brands b ON p.brand_id = b.brand_id
JOIN orders o ON oi.order_id = o.order_id
JOIN stores s ON o.store_id = s.store_id
GROUP BY b.brand_name, s.store_name;

-- 5. Listar os Funcionários que não estejam relacionados a um Pedido
SELECT e.staff_id, e.first_name, e.last_name
FROM staffs e
LEFT JOIN orders o ON e.staff_id = o.staff_id
WHERE o.order_id IS NULL;