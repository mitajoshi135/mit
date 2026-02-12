CREATE TABLE track_streams (
    stream_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    track_id INT NOT NULL,
    platform_id INT NOT NULL,
    stream_count BIGINT CHECK (stream_count >= 0),
    report_month DATE NOT NULL,
    FOREIGN KEY (track_id) REFERENCES tracks(track_id),
    FOREIGN KEY (platform_id) REFERENCES streaming_platforms(platform_id),
    UNIQUE (track_id, platform_id, report_month)
);
