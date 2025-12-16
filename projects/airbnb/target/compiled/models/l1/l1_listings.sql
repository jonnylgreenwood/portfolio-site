select
  'amsterdam' as city,
  to_date('20250911', 'YYYYMMDD') as snapshot_date,
  "id" as listing_id,
  "listing_url" as listing_url,
  nullif(trim("name"), '') as name,
  "source" as source,
  try_to_date("last_scraped") as last_scraped,
  try_to_date("last_review") as last_review,

  try_to_double("latitude") as latitude,
  try_to_double("longitude") as longitude,
  nullif(trim("license"), '') as license,

  nullif(trim("property_type"), '') as property_type,
  nullif(trim("room_type"), '') as room_type,

  nullif(trim("neighbourhood"), '') as neighbourhood,
  nullif(trim("neighbourhood_cleansed"), '') as neighbourhood_cleansed,
  nullif(trim("neighbourhood_group_cleansed"), '') as neighbourhood_group_cleansed,
  nullif(trim("neighborhood_overview"), '') as neighborhood_overview,coalesce(
      try_to_decimal(regexp_replace("price", '[^0-9\.\-]', ''), 10, 2),
      try_to_decimal(
        regexp_replace(to_varchar("price"), '[^0-9\.\-]', ''),
        10, 2
      )
    ) as price,

  case when lower("instant_bookable") in ('t','true','1','yes','y') then true when lower("instant_bookable") in ('f','false','0','no','n') then false else null end as instant_bookable,

  "host_url" as host_url,
  try_to_date("host_since") as host_since,
  try_to_double("host_total_listings_count") as host_total_listings_count,
  nullif(trim("host_response_time"), '') as host_response_time,
  -- "98%" -> 0.98 ; "98" -> 0.98 ; null stays null
  case
    when "host_response_rate" is null then null
    else try_to_decimal(regexp_replace("host_response_rate", '[^0-9\.\-]', ''), 10, 2) / 100
  end as host_response_rate,
  "host_verifications" as host_verifications,
  "host_thumbnail_url" as host_thumbnail_url,
  "host_picture_url" as host_picture_url,

  "picture_url" as picture_url,

  try_to_number("minimum_nights") as minimum_nights,
  try_to_number("maximum_nights") as maximum_nights,
  try_to_double("minimum_minimum_nights") as minimum_minimum_nights,
  try_to_double("maximum_minimum_nights") as maximum_minimum_nights,
  try_to_double("minimum_maximum_nights") as minimum_maximum_nights,
  try_to_double("maximum_maximum_nights") as maximum_maximum_nights,
  try_to_double("minimum_nights_avg_ntm") as minimum_nights_avg_ntm,
  try_to_double("maximum_nights_avg_ntm") as maximum_nights_avg_ntm,

  try_to_number("number_of_reviews") as number_of_reviews,
  try_to_number("number_of_reviews_ltm") as number_of_reviews_ltm,
  try_to_number("number_of_reviews_l30d") as number_of_reviews_l30d,
  try_to_number("number_of_reviews_ly") as number_of_reviews_ly,
  try_to_double("reviews_per_month") as reviews_per_month,

  try_to_double("review_scores_rating") as review_scores_rating,
  try_to_double("review_scores_accuracy") as review_scores_accuracy,
  try_to_double("review_scores_cleanliness") as review_scores_cleanliness,
  try_to_double("review_scores_checkin") as review_scores_checkin,
  try_to_double("review_scores_communication") as review_scores_communication,
  try_to_double("review_scores_location") as review_scores_location,
  try_to_double("review_scores_value") as review_scores_value
from AIRBNB.l0.raw__amsterdam__listings__20250911

union all
select
  'paris' as city,
  to_date('20250912', 'YYYYMMDD') as snapshot_date,
  "id" as listing_id,
  "listing_url" as listing_url,
  nullif(trim("name"), '') as name,
  "source" as source,
  try_to_date("last_scraped") as last_scraped,
  try_to_date("last_review") as last_review,

  try_to_double("latitude") as latitude,
  try_to_double("longitude") as longitude,
  nullif(trim("license"), '') as license,

  nullif(trim("property_type"), '') as property_type,
  nullif(trim("room_type"), '') as room_type,

  nullif(trim("neighbourhood"), '') as neighbourhood,
  nullif(trim("neighbourhood_cleansed"), '') as neighbourhood_cleansed,
  nullif(trim("neighbourhood_group_cleansed"), '') as neighbourhood_group_cleansed,
  nullif(trim("neighborhood_overview"), '') as neighborhood_overview,coalesce(
      try_to_decimal(regexp_replace("price", '[^0-9\.\-]', ''), 10, 2),
      try_to_decimal(
        regexp_replace(to_varchar("price"), '[^0-9\.\-]', ''),
        10, 2
      )
    ) as price,

  case when lower("instant_bookable") in ('t','true','1','yes','y') then true when lower("instant_bookable") in ('f','false','0','no','n') then false else null end as instant_bookable,

  "host_url" as host_url,
  try_to_date("host_since") as host_since,
  try_to_double("host_total_listings_count") as host_total_listings_count,
  nullif(trim("host_response_time"), '') as host_response_time,
  -- "98%" -> 0.98 ; "98" -> 0.98 ; null stays null
  case
    when "host_response_rate" is null then null
    else try_to_decimal(regexp_replace("host_response_rate", '[^0-9\.\-]', ''), 10, 2) / 100
  end as host_response_rate,
  "host_verifications" as host_verifications,
  "host_thumbnail_url" as host_thumbnail_url,
  "host_picture_url" as host_picture_url,

  "picture_url" as picture_url,

  try_to_number("minimum_nights") as minimum_nights,
  try_to_number("maximum_nights") as maximum_nights,
  try_to_double("minimum_minimum_nights") as minimum_minimum_nights,
  try_to_double("maximum_minimum_nights") as maximum_minimum_nights,
  try_to_double("minimum_maximum_nights") as minimum_maximum_nights,
  try_to_double("maximum_maximum_nights") as maximum_maximum_nights,
  try_to_double("minimum_nights_avg_ntm") as minimum_nights_avg_ntm,
  try_to_double("maximum_nights_avg_ntm") as maximum_nights_avg_ntm,

  try_to_number("number_of_reviews") as number_of_reviews,
  try_to_number("number_of_reviews_ltm") as number_of_reviews_ltm,
  try_to_number("number_of_reviews_l30d") as number_of_reviews_l30d,
  try_to_number("number_of_reviews_ly") as number_of_reviews_ly,
  try_to_double("reviews_per_month") as reviews_per_month,

  try_to_double("review_scores_rating") as review_scores_rating,
  try_to_double("review_scores_accuracy") as review_scores_accuracy,
  try_to_double("review_scores_cleanliness") as review_scores_cleanliness,
  try_to_double("review_scores_checkin") as review_scores_checkin,
  try_to_double("review_scores_communication") as review_scores_communication,
  try_to_double("review_scores_location") as review_scores_location,
  try_to_double("review_scores_value") as review_scores_value
from AIRBNB.l0.raw__paris__listings__20250912

union all
select
  'barcelona' as city,
  to_date('20250914', 'YYYYMMDD') as snapshot_date,
  "id" as listing_id,
  "listing_url" as listing_url,
  nullif(trim("name"), '') as name,
  "source" as source,
  try_to_date("last_scraped") as last_scraped,
  try_to_date("last_review") as last_review,

  try_to_double("latitude") as latitude,
  try_to_double("longitude") as longitude,
  nullif(trim("license"), '') as license,

  nullif(trim("property_type"), '') as property_type,
  nullif(trim("room_type"), '') as room_type,

  nullif(trim("neighbourhood"), '') as neighbourhood,
  nullif(trim("neighbourhood_cleansed"), '') as neighbourhood_cleansed,
  nullif(trim("neighbourhood_group_cleansed"), '') as neighbourhood_group_cleansed,
  nullif(trim("neighborhood_overview"), '') as neighborhood_overview,coalesce(
      try_to_decimal(regexp_replace("price", '[^0-9\.\-]', ''), 10, 2),
      try_to_decimal(
        regexp_replace(to_varchar("price"), '[^0-9\.\-]', ''),
        10, 2
      )
    ) as price,

  case when lower("instant_bookable") in ('t','true','1','yes','y') then true when lower("instant_bookable") in ('f','false','0','no','n') then false else null end as instant_bookable,

  "host_url" as host_url,
  try_to_date("host_since") as host_since,
  try_to_double("host_total_listings_count") as host_total_listings_count,
  nullif(trim("host_response_time"), '') as host_response_time,
  -- "98%" -> 0.98 ; "98" -> 0.98 ; null stays null
  case
    when "host_response_rate" is null then null
    else try_to_decimal(regexp_replace("host_response_rate", '[^0-9\.\-]', ''), 10, 2) / 100
  end as host_response_rate,
  "host_verifications" as host_verifications,
  "host_thumbnail_url" as host_thumbnail_url,
  "host_picture_url" as host_picture_url,

  "picture_url" as picture_url,

  try_to_number("minimum_nights") as minimum_nights,
  try_to_number("maximum_nights") as maximum_nights,
  try_to_double("minimum_minimum_nights") as minimum_minimum_nights,
  try_to_double("maximum_minimum_nights") as maximum_minimum_nights,
  try_to_double("minimum_maximum_nights") as minimum_maximum_nights,
  try_to_double("maximum_maximum_nights") as maximum_maximum_nights,
  try_to_double("minimum_nights_avg_ntm") as minimum_nights_avg_ntm,
  try_to_double("maximum_nights_avg_ntm") as maximum_nights_avg_ntm,

  try_to_number("number_of_reviews") as number_of_reviews,
  try_to_number("number_of_reviews_ltm") as number_of_reviews_ltm,
  try_to_number("number_of_reviews_l30d") as number_of_reviews_l30d,
  try_to_number("number_of_reviews_ly") as number_of_reviews_ly,
  try_to_double("reviews_per_month") as reviews_per_month,

  try_to_double("review_scores_rating") as review_scores_rating,
  try_to_double("review_scores_accuracy") as review_scores_accuracy,
  try_to_double("review_scores_cleanliness") as review_scores_cleanliness,
  try_to_double("review_scores_checkin") as review_scores_checkin,
  try_to_double("review_scores_communication") as review_scores_communication,
  try_to_double("review_scores_location") as review_scores_location,
  try_to_double("review_scores_value") as review_scores_value
from AIRBNB.l0.raw__barcelona__listings__20250914

union all
select
  'london' as city,
  to_date('20250914', 'YYYYMMDD') as snapshot_date,
  "id" as listing_id,
  "listing_url" as listing_url,
  nullif(trim("name"), '') as name,
  "source" as source,
  try_to_date("last_scraped") as last_scraped,
  try_to_date("last_review") as last_review,

  try_to_double("latitude") as latitude,
  try_to_double("longitude") as longitude,
  nullif(trim("license"), '') as license,

  nullif(trim("property_type"), '') as property_type,
  nullif(trim("room_type"), '') as room_type,

  nullif(trim("neighbourhood"), '') as neighbourhood,
  nullif(trim("neighbourhood_cleansed"), '') as neighbourhood_cleansed,
  nullif(trim("neighbourhood_group_cleansed"), '') as neighbourhood_group_cleansed,
  nullif(trim("neighborhood_overview"), '') as neighborhood_overview,coalesce(
      try_to_decimal(regexp_replace("price", '[^0-9\.\-]', ''), 10, 2),
      try_to_decimal(
        regexp_replace(to_varchar("price"), '[^0-9\.\-]', ''),
        10, 2
      )
    ) as price,

  case when lower("instant_bookable") in ('t','true','1','yes','y') then true when lower("instant_bookable") in ('f','false','0','no','n') then false else null end as instant_bookable,

  "host_url" as host_url,
  try_to_date("host_since") as host_since,
  try_to_double("host_total_listings_count") as host_total_listings_count,
  nullif(trim("host_response_time"), '') as host_response_time,
  -- "98%" -> 0.98 ; "98" -> 0.98 ; null stays null
  case
    when "host_response_rate" is null then null
    else try_to_decimal(regexp_replace("host_response_rate", '[^0-9\.\-]', ''), 10, 2) / 100
  end as host_response_rate,
  "host_verifications" as host_verifications,
  "host_thumbnail_url" as host_thumbnail_url,
  "host_picture_url" as host_picture_url,

  "picture_url" as picture_url,

  try_to_number("minimum_nights") as minimum_nights,
  try_to_number("maximum_nights") as maximum_nights,
  try_to_double("minimum_minimum_nights") as minimum_minimum_nights,
  try_to_double("maximum_minimum_nights") as maximum_minimum_nights,
  try_to_double("minimum_maximum_nights") as minimum_maximum_nights,
  try_to_double("maximum_maximum_nights") as maximum_maximum_nights,
  try_to_double("minimum_nights_avg_ntm") as minimum_nights_avg_ntm,
  try_to_double("maximum_nights_avg_ntm") as maximum_nights_avg_ntm,

  try_to_number("number_of_reviews") as number_of_reviews,
  try_to_number("number_of_reviews_ltm") as number_of_reviews_ltm,
  try_to_number("number_of_reviews_l30d") as number_of_reviews_l30d,
  try_to_number("number_of_reviews_ly") as number_of_reviews_ly,
  try_to_double("reviews_per_month") as reviews_per_month,

  try_to_double("review_scores_rating") as review_scores_rating,
  try_to_double("review_scores_accuracy") as review_scores_accuracy,
  try_to_double("review_scores_cleanliness") as review_scores_cleanliness,
  try_to_double("review_scores_checkin") as review_scores_checkin,
  try_to_double("review_scores_communication") as review_scores_communication,
  try_to_double("review_scores_location") as review_scores_location,
  try_to_double("review_scores_value") as review_scores_value
from AIRBNB.l0.raw__london__listings__20250914

union all
select
  'lisbon' as city,
  to_date('20250921', 'YYYYMMDD') as snapshot_date,
  "id" as listing_id,
  "listing_url" as listing_url,
  nullif(trim("name"), '') as name,
  "source" as source,
  try_to_date("last_scraped") as last_scraped,
  try_to_date("last_review") as last_review,

  try_to_double("latitude") as latitude,
  try_to_double("longitude") as longitude,
  nullif(trim("license"), '') as license,

  nullif(trim("property_type"), '') as property_type,
  nullif(trim("room_type"), '') as room_type,

  nullif(trim("neighbourhood"), '') as neighbourhood,
  nullif(trim("neighbourhood_cleansed"), '') as neighbourhood_cleansed,
  nullif(trim("neighbourhood_group_cleansed"), '') as neighbourhood_group_cleansed,
  nullif(trim("neighborhood_overview"), '') as neighborhood_overview,coalesce(
      try_to_decimal(regexp_replace("price", '[^0-9\.\-]', ''), 10, 2),
      try_to_decimal(
        regexp_replace(to_varchar("price"), '[^0-9\.\-]', ''),
        10, 2
      )
    ) as price,

  case when lower("instant_bookable") in ('t','true','1','yes','y') then true when lower("instant_bookable") in ('f','false','0','no','n') then false else null end as instant_bookable,

  "host_url" as host_url,
  try_to_date("host_since") as host_since,
  try_to_double("host_total_listings_count") as host_total_listings_count,
  nullif(trim("host_response_time"), '') as host_response_time,
  -- "98%" -> 0.98 ; "98" -> 0.98 ; null stays null
  case
    when "host_response_rate" is null then null
    else try_to_decimal(regexp_replace("host_response_rate", '[^0-9\.\-]', ''), 10, 2) / 100
  end as host_response_rate,
  "host_verifications" as host_verifications,
  "host_thumbnail_url" as host_thumbnail_url,
  "host_picture_url" as host_picture_url,

  "picture_url" as picture_url,

  try_to_number("minimum_nights") as minimum_nights,
  try_to_number("maximum_nights") as maximum_nights,
  try_to_double("minimum_minimum_nights") as minimum_minimum_nights,
  try_to_double("maximum_minimum_nights") as maximum_minimum_nights,
  try_to_double("minimum_maximum_nights") as minimum_maximum_nights,
  try_to_double("maximum_maximum_nights") as maximum_maximum_nights,
  try_to_double("minimum_nights_avg_ntm") as minimum_nights_avg_ntm,
  try_to_double("maximum_nights_avg_ntm") as maximum_nights_avg_ntm,

  try_to_number("number_of_reviews") as number_of_reviews,
  try_to_number("number_of_reviews_ltm") as number_of_reviews_ltm,
  try_to_number("number_of_reviews_l30d") as number_of_reviews_l30d,
  try_to_number("number_of_reviews_ly") as number_of_reviews_ly,
  try_to_double("reviews_per_month") as reviews_per_month,

  try_to_double("review_scores_rating") as review_scores_rating,
  try_to_double("review_scores_accuracy") as review_scores_accuracy,
  try_to_double("review_scores_cleanliness") as review_scores_cleanliness,
  try_to_double("review_scores_checkin") as review_scores_checkin,
  try_to_double("review_scores_communication") as review_scores_communication,
  try_to_double("review_scores_location") as review_scores_location,
  try_to_double("review_scores_value") as review_scores_value
from AIRBNB.l0.raw__lisbon__listings__20250921