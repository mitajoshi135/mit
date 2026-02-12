CREATE TABLE tracks (
    track_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    album_id INT NOT NULL,
    track_title VARCHAR(150) NOT NULL,
    duration_seconds INT CHECK (duration_seconds > 0),
    is_single BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (album_id) REFERENCES albums(album_id) ON DELETE CASCADE
);
