
  
    

create or replace transient  table AIRBNB.l0_l2.fct_reviews
    
    
    
    as (select *
from AIRBNB.l0_l1.l1_reviews
    )
;


  