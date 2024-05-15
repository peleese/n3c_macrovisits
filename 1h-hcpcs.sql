
--first regex to identify hcpcs -- for 'cleaner', baseline hcpcs
--exclude list of sites submitting data with low hcpcs quality 

CREATE TABLE hcpcs AS
SELECT *,
      regexp_extract(replace(replace(procedure_source_value,'CPT:'),'CPT4:',''), '(^[A-Z][0-9]{1,5}$|^[0-9]{5}$)') as hcpc
FROM omop.procedure_occurrence
where data_partner_id not in (    )

