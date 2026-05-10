CREATE TABLE IF NOT EXISTS spotify_tracks (
    idx INT,
    track_id STRING,
    artists STRING,
    album_name STRING,
    track_name STRING,
    popularity INT,
    duration_ms BIGINT,
    explicit STRING,
    danceability DOUBLE,
    energy DOUBLE,
    `key` INT, 
    loudness DOUBLE,
    mode INT,
    speechiness DOUBLE,
    acousticness DOUBLE,
    instrumentalness DOUBLE,
    liveness DOUBLE,
    valence DOUBLE,
    tempo DOUBLE,
    time_signature INT,
    track_genre STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ',' 
STORED AS TEXTFILE
TBLPROPERTIES ("skip.header.line.count"="1");

-- Ganti 'nama_file.csv' dengan nama file asli Anda yang ada di HDFS
--LOAD DATA INPATH '/user/hadoop/data/nama_file.csv' INTO TABLE spotify_tracks;
SELECT track_name, artists, instrumentalness FROM spotify_tracks LIMIT 5;
