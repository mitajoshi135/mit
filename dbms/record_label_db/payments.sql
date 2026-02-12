CREATE TABLE payments (
    payment_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    artist_id INT NOT NULL,
    amount NUMERIC(10,2) CHECK (amount > 0),
    payment_date DATE NOT NULL,
    payment_method VARCHAR(20)
        CHECK (payment_method IN ('Bank Transfer', 'Cheque', 'UPI')),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);
