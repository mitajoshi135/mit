CREATE TABLE albums (
    album_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    artist_id INT NOT NULL,
    album_title VARCHAR(150) NOT NULL,
    release_date DATE,
    album_type VARCHAR(20)
        CHECK (album_type IN ('Studio', 'EP', 'Single', 'Live')),
    total_tracks INT CHECK (total_tracks >= 0),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);
