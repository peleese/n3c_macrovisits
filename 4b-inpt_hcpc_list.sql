
CREATE TABLE inpt_hcpc_list AS
SELECT distinct visit_occurrence_id, cms_inpt
FROM cms_inpt_hcpcs
