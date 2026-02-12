CREATE TABLE artists (
    artist_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    stage_name VARCHAR(100) NOT NULL,
    legal_name VARCHAR(150),
    country VARCHAR(50),
    debut_year INT CHECK (debut_year >= 1900),
    artist_type VARCHAR(10) CHECK (artist_type IN ('Solo', 'Band')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
