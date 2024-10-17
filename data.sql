-- Inserindo dados na tabela customers
INSERT INTO customers (customer_id, first_name, last_name, phone, email, street, city, state, zip_code) 
VALUES 
(1, 'João', 'Silva', '555-1234', 'joao.silva@exemplo.com', 'Rua das Flores, 123', 'São Paulo', 'SP', '01001-000'),
(2, 'Maria', 'Oliveira', '555-5678', 'maria.oliveira@exemplo.com', 'Avenida Paulista, 456', 'São Paulo', 'SP', '01310-100'),
(3, 'Pedro', 'Santos', '555-8765', 'pedro.santos@exemplo.com', 'Rua do Sol, 789', 'Rio de Janeiro', 'RJ', '20010-000');

-- Inserindo dados na tabela stores
INSERT INTO stores (store_id, store_name, phone, email, street, city, state, zip_code)
VALUES
(1, 'Bicicletas Centro', '555-8765', 'contato@bicicletascentro.com', 'Rua Principal, 100', 'São Paulo', 'SP', '01000-000'),
(2, 'Bicicletas Norte', '555-5432', 'info@bicicletasnorte.com', 'Avenida Grande, 500', 'Rio de Janeiro', 'RJ', '20000-000');

-- Inserindo dados na tabela staffs
INSERT INTO staffs (staff_id, first_name, last_name, email, phone, active, store_id, manager_id)
VALUES
(1, 'Carlos', 'Almeida', 'carlos.almeida@bicicletascentro.com', '555-9876', 1, 1, NULL),
(2, 'Ana', 'Fernandes', 'ana.fernandes@bicicletasnorte.com', '555-6543', 1, 2, NULL),
(3, 'José', 'Pereira', 'jose.pereira@bicicletasnorte.com', '555-3333', 1, 2, 2);

-- Inserindo dados na tabela categories
INSERT INTO categories (category_id, category_name)
VALUES
(1, 'Mountain Bike'),
(2, 'Speed');

-- Inserindo dados na tabela brands
INSERT INTO brands (brand_id, brand_name)
VALUES
(1, 'Caloi'),
(2, 'Sense');

-- Inserindo dados na tabela products
INSERT INTO products (product_id, product_name, brand_id, category_id, model_year, list_price)
VALUES
(1, 'Caloi Elite Carbon', 1, 1, 2023, 5000.00),
(2, 'Sense Impact Pro', 2, 1, 2023, 8000.00),
(3, 'Caloi Strada Racing', 1, 2, 2023, 9000.00);  -- Produto que não será comprado

-- Inserindo dados na tabela stocks
INSERT INTO stocks (store_id, product_id, quantity)
VALUES
(1, 1, 10),   -- Caloi Elite Carbon, em estoque
(2, 2, 0),    -- Sense Impact Pro, sem estoque
(2, 3, 5);    -- Caloi Strada Racing, em estoque

-- Inserindo dados na tabela orders
INSERT INTO orders (order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id, staff_id)
VALUES
(1, 1, 1, '2024-10-01', '2024-10-10', '2024-10-05', 1, 1),
(2, 2, 1, '2024-10-02', '2024-10-12', '2024-10-06', 2, 2);

-- Inserindo dados na tabela order_items
INSERT INTO order_items (order_id, item_id, product_id, quantity, list_price, discount)
VALUES
(1, 1, 1, 2, 2500.00, 5.00),  -- 2 unidades de Caloi Elite Carbon
(2, 1, 2, 1, 8000.00, 10.00); -- 1 unidade de Sense Impact Pro