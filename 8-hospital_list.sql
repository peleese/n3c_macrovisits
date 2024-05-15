

CREATE TABLE hospital_list AS
SELECT macrovisit_id, 
1 as likely_hospitalization
FROM macro_filter
where (drg is not null or max_cms_inpt=1 or max_resources>=50 or all_inpt=1 or all_icu=1)

