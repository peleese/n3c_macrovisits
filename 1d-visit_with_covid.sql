
--identify visits with likely covid diagnosis from concepts
--this is a very quick and dirty method of identifying covid concepts but is sufficient for a fast inpt flag in macrovisit_fact


CREATE TABLE visit_with_covid AS
SELECT 1 as covid_dx, *
FROM omop.condition_occurrence
where lower(condition_concept_name) like ('%cov%')
