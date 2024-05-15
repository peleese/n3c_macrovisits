
--count diagnoses for each visit

CREATE TABLE dx_count 
SELECT visit_occurrence_id,
 person_id, 
 count(condition_occurrence_id) as dx_count,
 min(condition_start_date) as min_dx_date,
 max(condition_start_date) as max_dx_date
FROM omop.condition_occurrence
group by visit_occurrence_id, person_id
