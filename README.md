# n3c_macrovisits

## Summary
Logic and code used to build macrovisits &amp; high confidence hospitalizations in N3C's OMOP encounters data

The initial portion of the program (the scaffold programs) transform OMOP encounters/visits from the visit_occurrence into the grouped macrovisit encounter concepts by attempting to piece back together the atomic encounter components.  

The rest of the program (files 1a through 9b) calculate a large amount of encounter metadata to subsequently classify macrovisits as likely inpatient hospitalizations or flag other pertinent aspects of interest on the macrovisit.  

This code was developed and tuned focused on the OMOP visit_occurrence data occurring in the N3C enclave and the identified issues and heterogeneity in those data.  Some program modifications will likely be necessary and performance of this approach is unknown in other OMOP-based data systems. 

For more information on the underlying issues that led to macrovisit development, and the quantified results of applying this solution refer to our paper on this topic:  

"Clinical encounter heterogeneity and methods for resolving in networked EHR data: a study from N3C and RECOVER programs"
https://academic.oup.com/jamia/article-abstract/30/6/1125/7136721
