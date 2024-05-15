--count procedures on each visit


CREATE TABLE proc_count AS
SELECT visit_occurrence_id, 
count(procedure_occurrence_id) as proc_count,
 min(procedure_date) as min_proc_date,
 max(procedure_date) as max_proc_date
FROM omop.procedure_occurrence
group by visit_occurrence_id
