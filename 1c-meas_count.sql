
    --count measures for each visit


CREATE TABLE meas_count
SELECT visit_occurrence_id, count(measurement_id) as meas_count
FROM omop.measurements
where visit_occurrence_id is not null
group by visit_occurrence_id
