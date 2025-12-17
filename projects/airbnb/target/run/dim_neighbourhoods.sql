
  
    

create or replace transient  table AIRBNB.l0_l2.dim_neighbourhoods
    
    
    
    as (SELECT
    "CITY",
  "NEIGHBOURHOOD_CLEANSED",
  MD5(CONCAT(TRIM(LOWER("NEIGHBOURHOOD_CLEANSED")), '|', TRIM(LOWER("CITY")))) AS neighbourhood_key
FROM AIRBNB.l0_l1.l1_listings
GROUP BY "CITY", "NEIGHBOURHOOD_CLEANSED"
ORDER BY "CITY", "NEIGHBOURHOOD_CLEANSED"
    )
;


  