
  create or replace   view AIRBNB.l0_l1.l1_calendar
  
   as (
    select
  'amsterdam' as city,
  to_date('20250911', 'YYYYMMDD') as snapshot_date,
  "listing_id" as listing_id,
  to_date("date") as date,
  "available" as available,
  try_to_decimal(regexp_replace("price", '[^0-9\.\-]', ''), 10, 2) as price,
  try_to_decimal(regexp_replace("adjusted_price", '[^0-9\.\-]', ''), 10, 2) as adjusted_price,
  try_to_number("minimum_nights") as minimum_nights,
  try_to_number("maximum_nights") as maximum_nights
from AIRBNB.l0.raw__amsterdam__calendar__20250911

UNION ALL
select
  'barcelona' as city,
  to_date('20250914', 'YYYYMMDD') as snapshot_date,
  "listing_id" as listing_id,
  to_date("date") as date,
  "available" as available,
  try_to_decimal(regexp_replace("price", '[^0-9\.\-]', ''), 10, 2) as price,
  try_to_decimal(regexp_replace("adjusted_price", '[^0-9\.\-]', ''), 10, 2) as adjusted_price,
  try_to_number("minimum_nights") as minimum_nights,
  try_to_number("maximum_nights") as maximum_nights
from AIRBNB.l0.raw__barcelona__calendar__20250914
UNION ALL
select
  'paris' as city,
  to_date('20250912', 'YYYYMMDD') as snapshot_date,
  "listing_id" as listing_id,
  to_date("date") as date,
  "available" as available,
  try_to_decimal(regexp_replace("price", '[^0-9\.\-]', ''), 10, 2) as price,
  try_to_decimal(regexp_replace("adjusted_price", '[^0-9\.\-]', ''), 10, 2) as adjusted_price,
  try_to_number("minimum_nights") as minimum_nights,
  try_to_number("maximum_nights") as maximum_nights
from AIRBNB.l0.raw__paris__calendar__20250912
UNION ALL
select
  'lisbon' as city,
  to_date('20250921', 'YYYYMMDD') as snapshot_date,
  "listing_id" as listing_id,
  to_date("date") as date,
  "available" as available,
  try_to_decimal(regexp_replace("price", '[^0-9\.\-]', ''), 10, 2) as price,
  try_to_decimal(regexp_replace("adjusted_price", '[^0-9\.\-]', ''), 10, 2) as adjusted_price,
  try_to_number("minimum_nights") as minimum_nights,
  try_to_number("maximum_nights") as maximum_nights
from AIRBNB.l0.raw__lisbon__calendar__20250921
UNION ALL
select
  'london' as city,
  to_date('20250914', 'YYYYMMDD') as snapshot_date,
  "listing_id" as listing_id,
  to_date("date") as date,
  "available" as available,
  try_to_decimal(regexp_replace("price", '[^0-9\.\-]', ''), 10, 2) as price,
  try_to_decimal(regexp_replace("adjusted_price", '[^0-9\.\-]', ''), 10, 2) as adjusted_price,
  try_to_number("minimum_nights") as minimum_nights,
  try_to_number("maximum_nights") as maximum_nights
from AIRBNB.l0.raw__london__calendar__20250914
  );

