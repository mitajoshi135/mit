CREATE TABLE streaming_platforms (
    platform_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    platform_name VARCHAR(100) UNIQUE NOT NULL
);
