CREATE TABLE royalties (
    royalty_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    contract_id INT NOT NULL,
    track_id INT NOT NULL,
    royalty_amount NUMERIC(10,2) CHECK (royalty_amount >= 0),
    royalty_date DATE NOT NULL,
    FOREIGN KEY (contract_id) REFERENCES contracts(contract_id),
    FOREIGN KEY (track_id) REFERENCES tracks(track_id)
);
