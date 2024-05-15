
--counts of drugs on each visit
CREATE TABLE drug_count 
SELECT visit_occurrence_id, 
person_id,
 count(drug_exposure_id) as drug_count,
  min(drug_exposure_start_date) as min_drug_date,
   max(drug_exposure_start_date) as max_drug_date
FROM omop.drug_exposure
group by visit_occurrence_id, person_id
