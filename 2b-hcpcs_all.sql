
--combine extracted hcpcs data back together minus places where hcpc is null or empty

CREATE TABLE hcpcs_all AS

SELECT * FROM hcpcs
where length(hcpc)>0

UNION

select * from beg_hcpcs
where length(hcpc)>0

UNION

select * from end_hcpcs
where length(hcpc)>0
