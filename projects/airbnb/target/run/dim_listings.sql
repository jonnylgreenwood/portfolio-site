
  
    

create or replace transient  table AIRBNB.l0_l2.dim_listings
    
    
    
    as (select *
from AIRBNB.l0_l1.l1_listings
    )
;


  