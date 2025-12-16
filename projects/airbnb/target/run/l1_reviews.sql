
  create or replace   view AIRBNB.l0_l1.l1_reviews
  
   as (
    select
  'amsterdam' as city,
  to_date('20250911', 'YYYYMMDD') as snapshot_date,
  null as "review_id",

  null as "listing_id",

  null as "review_date",

  null as "reviewer_id",

  null as "reviewer_name",

  null as "comments"
from AIRBNB.l0.raw__amsterdam__reviews__20250911

union all
select
  'paris' as city,
  to_date('20250912', 'YYYYMMDD') as snapshot_date,
  null as "review_id",

  null as "listing_id",

  null as "review_date",

  null as "reviewer_id",

  null as "reviewer_name",

  null as "comments"
from AIRBNB.l0.raw__paris__reviews__20250912

union all
select
  'barcelona' as city,
  to_date('20250914', 'YYYYMMDD') as snapshot_date,
  null as "review_id",

  null as "listing_id",

  null as "review_date",

  null as "reviewer_id",

  null as "reviewer_name",

  null as "comments"
from AIRBNB.l0.raw__barcelona__reviews__20250914

union all
select
  'london' as city,
  to_date('20250914', 'YYYYMMDD') as snapshot_date,
  null as "review_id",

  null as "listing_id",

  null as "review_date",

  null as "reviewer_id",

  null as "reviewer_name",

  null as "comments"
from AIRBNB.l0.raw__london__reviews__20250914

union all
select
  'lisbon' as city,
  to_date('20250921', 'YYYYMMDD') as snapshot_date,
  null as "review_id",

  null as "listing_id",

  null as "review_date",

  null as "reviewer_id",

  null as "reviewer_name",

  null as "comments"
from AIRBNB.l0.raw__lisbon__reviews__20250921
  );

