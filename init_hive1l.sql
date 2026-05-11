CREATE DATABASE IF NOT EXISTS spotify_db;
USE spotify_db;

DROP TABLE IF EXISTS spotify_tracks;

CREATE TABLE spotify_tracks (
    id INT,
    track_id STRING,
    artists STRING,
    album_name STRING,
    track_name STRING,
    popularity INT,
    duration_ms INT,
    explicit STRING, -- Ubah boolean jadi STRING dulu di OpenCSVSerde untuk menghindari error parsing
    danceability FLOAT,
    energy FLOAT,
    key INT,
    loudness FLOAT,
    mode INT,
    speechiness FLOAT,
    acousticness FLOAT,
    instrumentalness FLOAT,
    liveness FLOAT,
    valence FLOAT,
    tempo FLOAT,
    time_signature INT,
    track_genre STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
   "separatorChar" = ",",
   "quoteChar"     = "\"",
   "escapeChar"    = "\\"
)
STORED AS TEXTFILE
TBLPROPERTIES ("skip.header.line.count"="1");

-- Ganti 'nama_file.csv' dengan nama file asli Anda yang ada di HDFS
--LOAD DATA INPATH '/user/hadoop/data/nama_file.csv' INTO TABLE spotify_tracks;
--SELECT track_name, artists, instrumentalness FROM spotify_tracks LIMIT 5;
