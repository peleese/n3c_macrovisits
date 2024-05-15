
--this is the list of CMS-identified HCPCs that will only be paid for inpatient hospitalizations
--this comes from the CMS hospital OPPS notice of final rulemaking Year 2022 (CMS-1753-FC), addendum E
--https://www.cms.gov/license/ama?file=/files/zip/2022-nfrm-opps-addenda.zip


CREATE TABLE cms_inpt_hcpcs AS
SELECT *, 1 as cms_inpt 
from hcpcs_all
where hcpc in ('00176','00192','00211','00214','00215','00474','00524','00540','00542','00546','00560','00561','00562','00567','00580','00604','00632','0075T','0076T','00792','00794','00796','00844','00846','00848','00864','00866','00868','00882','00904','00908','00932','00934','00936','0095T','0098T','01140','01150','01212','01232','01234','01272','01274','01404','01442','01444','01502','01634','01636','0163T','0164T','01652','01654','01656','0165T','01756','01990','0202T','0219T','0220T','0235T','0345T','0483T','0484T','0494T','0495T','0496T','0543T','0544T','0545T','0569T','0570T','0584T','0585T','0586T','0643T','0656T','0657T','0659T','11004','11005','11006','11008','15756','15757','15758','16036','19305','19306','19361','19364','19367','19368','19369','20661','20664','20802','20805','20808','20816','20824','20827','20838','20955','20956','20957','20962','20969','20970','21045','21141','21142','21143','21145','21146','21147','21151','21154','21155','21159','21160','21179','21180','21182','21183','21184','21188','21194','21196','21247','21255','21268','21343','21344','21347','21348','21366','21422','21423','21431','21432','21433','21435','21436','21510','21602','21603','21615','21616','21620','21627','21630','21632','21705','21740','21750','21825','22010','22015','22110','22112','22114','22116','22206','22207','22208','22210','22212','22214','22216','22220','22222','22224','22226','22318','22319','22325','22326','22327','22328','22532','22533','22534','22548','22556','22558','22586','22590','22595','22600','22610','22632','22800','22802','22804','22808','22810','22812','22818','22819','22830','22841','22843','22844','22846','22847','22848','22849','22850','22852','22855','22857','22861','22862','22864','22865','23200','23210','23220','23335','23474','23900','23920','24900','24920','24930','24931','24940','25900','25905','25915','25920','25924','25927','26551','26553','26554','26556','26992','27005','27025','27030','27036','27054','27070','27071','27075','27076','27077','27078','27090','27091','27120','27122','27125','27132','27134','27137','27138','27140','27146','27147','27151','27156','27158','27161','27165','27170','27175','27176','27177','27178','27181','27185','27187','27222','27226','27227','27228','27232','27236','27240','27244','27245','27248','27253','27254','27258','27259','27268','27269','27280','27282','27284','27286','27290','27295','27303','27365','27445','27448','27450','27454','27455','27457','27465','27466','27468','27470','27472','27486','27487','27488','27495','27506','27507','27511','27513','27514','27519','27535','27536','27540','27556','27557','27558','27580','27590','27591','27592','27596','27598','27645','27646','27703','27712','27715','27724','27725','27727','27880','27881','27882','27886','27888','28800','31225','31230','31290','31291','31360','31365','31367','31368','31370','31375','31380','31382','31390','31395','31725','31760','31766','31770','31775','31780','31781','31786','31800','31805','32035','32036','32096','32097','32098','32100','32110','32120','32124','32140','32141','32150','32151','32160','32200','32215','32220','32225','32310','32320','32440','32442','32445','32480','32482','32484','32486','32488','32491','32501','32503','32504','32505','32506','32507','32540','32650','32651','32652','32653','32654','32655','32656','32658','32659','32661','32662','32663','32664','32665','32666','32667','32668','32669','32670','32671','32672','32673','32674','32800','32810','32815','32820','32850','32851','32852','32853','32854','32855','32856','32900','32905','32906','32940','32997','33017','33018','33019','33020','33025','33030','33031','33050','33120','33130','33140','33141','33202','33203','33236','33237','33238','33243','33250','33251','33254','33255','33256','33257','33258','33259','33261','33265','33266','33267','33268','33269','33300','33305','33310','33315','33320','33321','33322','33330','33335','33340','33361','33362','33363','33364','33365','33366','33367','33368','33369','33390','33391','33404','33405','33406','33410','33411','33412','33413','33414','33415','33416','33417','33418','33420','33422','33425','33426','33427','33430','33440','33460','33463','33464','33465','33468','33471','33474','33475','33476','33477','33478','33496','33500','33501','33502','33503','33504','33505','33506','33507','33509','33510','33511','33512','33513','33514','33516','33517','33518','33519','33521','33522','33523','33530','33533','33534','33535','33536','33542','33545','33548','33572','33600','33602','33606','33608','33610','33611','33612','33615','33617','33619','33620','33621','33622','33641','33645','33647','33660','33665','33670','33675','33676','33677','33681','33684','33688','33690','33692','33694','33697','33702','33710','33720','33724','33726','33730','33732','33735','33736','33737','33741','33745','33746','33750','33755','33762','33764','33766','33767','33768','33770','33771','33774','33775','33776','33777','33778','33779','33780','33781','33782','33783','33786','33788','33800','33802','33803','33813','33814','33820','33822','33824','33840','33845','33851','33852','33853','33858','33859','33863','33864','33871','33875','33877','33880','33881','33883','33884','33886','33889','33891','33894','33895','33897','33910','33915','33916','33917','33920','33922','33924','33925','33926','33927','33928','33929','33930','33933','33935','33940','33944','33945','33946','33947','33948','33949','33951','33952','33953','33954','33955','33956','33957','33958','33959','33962','33963','33964','33965','33966','33967','33968','33969','33970','33971','33973','33974','33975','33976','33977','33978','33979','33980','33981','33982','33983','33984','33985','33986','33987','33988','33989','33990','33991','33992','33993','33995','33997','34001','34051','34151','34401','34451','34502','34701','34702','34703','34704','34705','34706','34707','34708','34709','34710','34711','34712','34717','34718','34808','34812','34813','34820','34830','34831','34832','34833','34834','34841','34842','34843','34844','34845','34846','34847','34848','35001','35002','35005','35013','35021','35022','35081','35082','35091','35092','35102','35103','35111','35112','35121','35122','35131','35132','35141','35142','35151','35152','35182','35189','35211','35216','35221','35241','35246','35251','35271','35276','35281','35301','35302','35303','35304','35305','35306','35311','35331','35341','35351','35355','35361','35363','35371','35372','35390','35400','35501','35506','35508','35509','35510','35511','35512','35515','35516','35518','35521','35522','35523','35525','35526','35531','35533','35535','35536','35537','35538','35539','35540','35556','35558','35560','35563','35565','35566','35570','35571','35583','35585','35587','35600','35601','35606','35612','35616','35621','35623','35626','35631','35632','35633','35634','35636','35637','35638','35642','35645','35646','35647','35650','35654','35656','35661','35663','35665','35666','35671','35681','35682','35683','35691','35693','35694','35695','35697','35700','35701','35702','35703','35800','35820','35840','35870','35901','35905','35907','36660','36823','37140','37145','37160','37180','37181','37182','37215','37217','37218','37616','37617','37618','37660','37788','38100','38101','38102','38115','38380','38381','38382','38562','38564','38724','38746','38747','38765','38770','38780','39000','39010','39200','39220','39499','39501','39503','39540','39541','39545','39560','39561','39599','41130','41135','41140','41145','41150','41153','41155','42426','42845','42894','42953','42961','42971','43045','43100','43101','43107','43108','43112','43113','43116','43117','43118','43121','43122','43123','43124','43135','43279','43283','43286','43287','43288','43300','43305','43310','43312','43313','43314','43320','43325','43327','43328','43330','43331','43332','43333','43334','43335','43336','43337','43338','43340','43341','43351','43352','43360','43361','43400','43405','43410','43415','43425','43460','43496','43500','43501','43502','43520','43605','43610','43611','43620','43621','43622','43631','43632','43633','43634','43635','43640','43641','43644','43645','43771','43775','43800','43810','43820','43825','43832','43840','43843','43845','43846','43847','43848','43860','43865','43880','43881','43882','44005','44010','44015','44020','44021','44025','44050','44055','44110','44111','44120','44121','44125','44126','44127','44128','44130','44132','44133','44135','44136','44137','44139','44140','44141','44143','44144','44145','44146','44147','44150','44151','44155','44156','44157','44158','44160','44187','44188','44202','44203','44204','44205','44206','44207','44208','44210','44211','44212','44213','44227','44300','44310','44314','44316','44320','44322','44345','44346','44602','44603','44604','44605','44615','44620','44625','44626','44640','44650','44660','44661','44680','44700','44715','44720','44721','44800','44820','44850','44899','44900','44960','45110','45111','45112','45113','45114','45116','45119','45120','45121','45123','45126','45130','45135','45136','45395','45397','45400','45402','45540','45550','45562','45563','45800','45805','45820','45825','46705','46710','46712','46715','46716','46730','46735','46740','46742','46744','46746','46748','46751','47010','47015','47100','47120','47122','47125','47130','47133','47135','47140','47141','47142','47143','47144','47145','47146','47147','47300','47350','47360','47361','47362','47380','47381','47400','47420','47425','47460','47480','47550','47570','47600','47605','47610','47612','47620','47700','47701','47711','47712','47715','47720','47721','47740','47741','47760','47765','47780','47785','47800','47801','47802','47900','48000','48001','48020','48100','48105','48120','48140','48145','48146','48148','48150','48152','48153','48154','48155','48400','48500','48510','48520','48540','48545','48547','48548','48551','48552','48554','48556','49000','49002','49010','49013','49014','49020','49040','49060','49062','49203','49204','49205','49215','49255','49412','49425','49428','49605','49606','49610','49611','49900','49904','49905','49906','50010','50040','50045','50060','50065','50070','50075','50100','50120','50125','50130','50135','50205','50220','50225','50230','50234','50236','50240','50250','50280','50290','50300','50320','50323','50325','50327','50328','50329','50340','50360','50365','50370','50380','50400','50405','50500','50520','50525','50526','50540','50545','50546','50547','50548','50600','50605','50610','50620','50630','50650','50660','50700','50715','50722','50725','50728','50740','50750','50760','50770','50780','50782','50783','50785','50800','50810','50815','50820','50825','50830','50840','50845','50860','50900','50920','50930','50940','51525','51530','51550','51555','51565','51570','51575','51580','51585','51590','51595','51596','51597','51800','51820','51840','51841','51865','51900','51920','51925','51940','51960','51980','53415','53448','54125','54130','54135','54390','54430','54438','55605','55650','55801','55810','55812','55815','55821','55831','55840','55842','55845','55862','55865','56630','56631','56632','56633','56634','56637','56640','57110','57111','57270','57280','57296','57305','57307','57308','57311','57531','57540','57545','58140','58146','58150','58152','58180','58200','58210','58240','58267','58275','58280','58285','58400','58410','58520','58540','58548','58575','58605','58611','58700','58720','58740','58750','58752','58760','58822','58825','58940','58943','58950','58951','58952','58953','58954','58956','58957','58958','58960','59120','59121','59130','59136','59140','59325','59350','59514','59525','59620','59830','59850','59851','59852','59855','59856','59857','60254','60270','60505','60521','60522','60540','60545','60600','60605','60650','61105','61107','61108','61120','61140','61150','61151','61154','61156','61210','61250','61253','61304','61305','61312','61313','61314','61315','61316','61320','61321','61322','61323','61333','61340','61343','61345','61450','61458','61460','61500','61501','61510','61512','61514','61516','61517','61518','61519','61520','61521','61522','61524','61526','61530','61531','61533','61534','61535','61536','61537','61538','61539','61540','61541','61543','61544','61545','61546','61548','61550','61552','61556','61557','61558','61559','61563','61564','61566','61567','61570','61571','61575','61576','61580','61581','61582','61583','61584','61585','61586','61590','61591','61592','61595','61596','61597','61598','61600','61601','61605','61606','61607','61608','61611','61613','61615','61616','61618','61619','61624','61630','61635','61645','61650','61651','61680','61682','61684','61686','61690','61692','61697','61698','61700','61702','61703','61705','61708','61710','61711','61735','61736','61737','61750','61751','61760','61850','61860','61863','61864','61867','61868','62005','62010','62100','62115','62117','62120','62121','62140','62141','62142','62143','62145','62146','62147','62148','62161','62162','62164','62165','62180','62190','62192','62200','62201','62220','62223','62256','62258','63050','63051','63077','63078','63081','63082','63085','63086','63087','63088','63090','63091','63101','63102','63103','63170','63172','63173','63185','63190','63191','63197','63200','63250','63251','63252','63270','63271','63272','63273','63275','63276','63277','63278','63280','63281','63282','63283','63285','63286','63287','63290','63295','63300','63301','63302','63303','63304','63305','63306','63307','63308','63700','63702','63704','63706','63707','63709','63710','63740','64755','64760','64809','64818','64866','64868','65273','69155','69535','69554','69950','75956','75957','75958','75959','92941','92970','92971','92975','93583','99184','99190','99191','99192','99356','99357','99462','99468','99469','99471','99472','99475','99476','99477','99478','99479','99480','C9606','G0341','G0342','G0343','G0412','G0414','G0415')