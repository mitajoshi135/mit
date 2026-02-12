CREATE TABLE track_producers (
    track_id INT,
    producer_id INT,
    PRIMARY KEY (track_id, producer_id),
    FOREIGN KEY (track_id) REFERENCES tracks(track_id) ON DELETE CASCADE,
    FOREIGN KEY (producer_id) REFERENCES producers(producer_id) ON DELETE CASCADE
);
