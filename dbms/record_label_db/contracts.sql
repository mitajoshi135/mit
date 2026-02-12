CREATE TABLE contracts (
    contract_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    artist_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    contract_type VARCHAR(20)
        CHECK (contract_type IN ('Exclusive', 'Non-Exclusive')),
    royalty_rate NUMERIC(5,2)
        CHECK (royalty_rate BETWEEN 0 AND 100),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);
