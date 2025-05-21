\c mylab;

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO customers (name, email) VALUES
('Nguyen Van A', 'a@example.com'),
('Tran Thi B', 'b@example.com');
