--identify DRGs for the few sites that send them in observations

CREATE TABLE obs_drg AS
SELECT *, regexp_extract(observation_source_value, '([0-9]{3}$)') as drg
FROM omop.observations
where upper(observation_source_value) like ('%DRG%')
