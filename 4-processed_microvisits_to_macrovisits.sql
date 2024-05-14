CREATE TABLE processed_microvisits_to_macrovisits as

SELECT  v.*,
        m.macrovisit_id,
        m.macrovisit_start_date,
        m.macrovisit_end_date
FROM omop.visit_occurrence v
LEFT JOIN  initial_macrovisits_with_microvisits m
ON v.visit_occurrence_id = m.visit_occurrence_id
