
--for sites that put hcpcs at end of strings

CREATE TABLE end_hcpcs AS
select * from (

SELECT *, regexp_extract(procedure_source_value, '([A-Z]{1}[0-9]+$|[0-9]+$)') as hcpc
FROM omop.procedure_occurrence
where data_partner_id in ( )

) A
where length(hcpc)=5
