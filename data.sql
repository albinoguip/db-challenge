-- Criação da tabela de clientes
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    first_name  TEXT    NOT NULL,
    last_name   TEXT    NOT NULL,
    phone       TEXT,
    email       TEXT,
    street      TEXT,
    city        TEXT,
    state       TEXT,
    zip_code    TEXT
);


-- Criação da tabela de lojas
CREATE TABLE stores (
    store_id   INTEGER PRIMARY KEY,
    store_name TEXT    NOT NULL,
    phone      TEXT,
    email      TEXT,
    street     TEXT,
    city       TEXT,
    state      TEXT,
    zip_code   TEXT
);

-- Criação da tabela de funcionários
CREATE TABLE staffs (
    staff_id   INTEGER PRIMARY KEY,
    first_name TEXT    NOT NULL,
    last_name  TEXT    NOT NULL,
    email      TEXT,
    phone      TEXT,
    active     INTEGER NOT NULL,
    store_id   INTEGER,
    manager_id INTEGER,
    FOREIGN KEY (store_id)   REFERENCES stores(store_id),
    FOREIGN KEY (manager_id) REFERENCES staffs(staff_id)
);


-- Criação da tabela de pedidos
CREATE TABLE orders (
    order_id      INTEGER PRIMARY KEY,
    customer_id   INTEGER,
    order_status  INTEGER NOT NULL,
    order_date    TEXT    NOT NULL,
    required_date TEXT    NOT NULL,
    shipped_date  TEXT,
    store_id      INTEGER,
    staff_id      INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (store_id)    REFERENCES stores(store_id),
    FOREIGN KEY (staff_id)    REFERENCES staffs(staff_id)
);

-- Criação da tabela de itens do pedido
CREATE TABLE order_items (
    order_id   INTEGER,
    item_id    INTEGER,
    product_id INTEGER,
    quantity   INTEGER NOT NULL,
    list_price REAL    NOT NULL,
    discount   REAL    NOT NULL,
    PRIMARY KEY (order_id, item_id),
    FOREIGN KEY (order_id)  REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Criação da tabela de categorias
CREATE TABLE categories (
    category_id   INTEGER PRIMARY KEY,
    category_name TEXT    NOT NULL
);

-- Criação da tabela de marcas
CREATE TABLE brands (
    brand_id   INTEGER PRIMARY KEY,
    brand_name TEXT    NOT NULL
);

-- Criação da tabela de produtos
CREATE TABLE products (
    product_id   INTEGER PRIMARY KEY,
    product_name TEXT    NOT NULL,
    brand_id     INTEGER,
    category_id  INTEGER,
    model_year   INTEGER NOT NULL,
    list_price   REAL    NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brands(brand_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- Criação da tabela de estoques
CREATE TABLE stocks (
    store_id   INTEGER,
    product_id INTEGER,
    quantity   INTEGER NOT NULL,
    PRIMARY KEY (store_id, product_id),
    FOREIGN KEY (store_id) REFERENCES stores(store_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);