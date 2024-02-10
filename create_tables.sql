CREATE EXTERNAL TABLE IF NOT EXISTS week3_zoomcamp.external_green

OPTIONS(
format = 'PARQUET',
uris = ['gs://week3-bucketerino-parquet/green/*.parquet']
);

CREATE TABLE IF NOT EXISTS week3_zoomcamp.native_green AS
SELECT * FROM week3_zoomcamp.external_green;
