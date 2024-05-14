
CREATE TABLE initial_macrovisits_with_microvisits
with merging_intervals as (
    SELECT
        macrovisit_id,
        person_id,
        macrovisit_start_date,
        macrovisit_end_date
    from
        merging_intervals
)
SELECT  
        v.person_id,
        v.data_partner_id,
        v.visit_occurrence_id,
        v.visit_concept_id,
        merging_intervals.macrovisit_id,
        merging_intervals.macrovisit_start_date,
        merging_intervals.macrovisit_end_date
FROM omop.visit_occurrence v
LEFT JOIN merging_intervals
ON v.person_id = merging_intervals.person_id
AND v.visit_start_date >= merging_intervals.macrovisit_start_date
AND v.visit_start_date <= merging_intervals.macrovisit_end_date 
