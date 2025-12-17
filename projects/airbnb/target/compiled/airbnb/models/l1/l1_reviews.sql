select
  'amsterdam' as city,
  to_date('20250911', 'YYYYMMDD') as snapshot_date,
  try_to_number("id")           as review_id,
  try_to_number("listing_id")   as listing_id,
  try_to_date("date")           as review_date,
  try_to_number("reviewer_id")  as reviewer_id,
  nullif(trim("reviewer_name"), '') as reviewer_name,
  "comments"                    as comments
from AIRBNB.l0.raw__amsterdam__reviews__20250911

union all
select
  'paris' as city,
  to_date('20250912', 'YYYYMMDD') as snapshot_date,
  try_to_number("id")           as review_id,
  try_to_number("listing_id")   as listing_id,
  try_to_date("date")           as review_date,
  try_to_number("reviewer_id")  as reviewer_id,
  nullif(trim("reviewer_name"), '') as reviewer_name,
  "comments"                    as comments
from AIRBNB.l0.raw__paris__reviews__20250912

union all
select
  'barcelona' as city,
  to_date('20250914', 'YYYYMMDD') as snapshot_date,
  try_to_number("id")           as review_id,
  try_to_number("listing_id")   as listing_id,
  try_to_date("date")           as review_date,
  try_to_number("reviewer_id")  as reviewer_id,
  nullif(trim("reviewer_name"), '') as reviewer_name,
  "comments"                    as comments
from AIRBNB.l0.raw__barcelona__reviews__20250914

union all
select
  'london' as city,
  to_date('20250914', 'YYYYMMDD') as snapshot_date,
  try_to_number("id")           as review_id,
  try_to_number("listing_id")   as listing_id,
  try_to_date("date")           as review_date,
  try_to_number("reviewer_id")  as reviewer_id,
  nullif(trim("reviewer_name"), '') as reviewer_name,
  "comments"                    as comments
from AIRBNB.l0.raw__london__reviews__20250914

union all
select
  'lisbon' as city,
  to_date('20250921', 'YYYYMMDD') as snapshot_date,
  try_to_number("id")           as review_id,
  try_to_number("listing_id")   as listing_id,
  try_to_date("date")           as review_date,
  try_to_number("reviewer_id")  as reviewer_id,
  nullif(trim("reviewer_name"), '') as reviewer_name,
  "comments"                    as comments
from AIRBNB.l0.raw__lisbon__reviews__20250921