CREATE TABLE customer (id BIGINT IDENTITY PRIMARY KEY, first_name VARCHAR(255), last_name VARCHAR(255),
  email_address VARCHAR(255));
CREATE TABLE address (id BIGINT IDENTITY PRIMARY KEY,
  customer_id BIGINT CONSTRAINT address_customer_ref FOREIGN KEY REFERENCES customer (id),
  street VARCHAR(255), city VARCHAR(255), country VARCHAR(255));
