
 --count observations for each visit

CREATE TABLE obs_count
SELECT visit_occurrence_id, count(observation_id) as obs_count
FROM omop.observations
where visit_occurrence_id is not null
group by visit_occurrence_id
order by visit_occurrence_id
