-- non-partitioned:
SELECT DISTINCT(PULocationID) FROM `stoked-champion-410819.week3_zoomcamp.native_green`
WHERE DATE(lpep_pickup_datetime)
        BETWEEN
          DATE("2022-06-01") AND DATE("2022-06-30")
-- 12.82 MB

-- partitioned and clustered:
SELECT DISTINCT(PULocationID) FROM `stoked-champion-410819.week3_zoomcamp.green_partitioned_clustered`
WHERE DATE(lpep_pickup_datetime)
        BETWEEN
          DATE("2022-06-01") AND DATE("2022-06-30")
-- 1.12 MB