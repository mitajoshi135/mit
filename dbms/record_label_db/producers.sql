CREATE TABLE producers (
    producer_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    producer_name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);
