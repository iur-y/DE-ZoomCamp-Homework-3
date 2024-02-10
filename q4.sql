CREATE TABLE week3_zoomcamp.green_partitioned_clustered
PARTITION BY DATE(lpep_pickup_datetime)
CLUSTER BY PUlocationID AS
SELECT * FROM week3_zoomcamp.native_green;