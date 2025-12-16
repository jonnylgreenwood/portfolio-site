
  create or replace   view AIRBNB.l0_l1.l1_listings
  
   as (
    select
  'amsterdam' as city,
  to_date('20250911', 'YYYYMMDD') as snapshot_date,
  null as "listing_id",
  null as "listing_url",
  null as "name",
  null as "source",
  null as "last_scraped",
  null as "last_review",

  null as "latitude",
  null as "longitude",
  null as "license",

  null as "property_type",
  null as "room_type",

  null as "neighbourhood",
  null as "neighbourhood_cleansed",
  null as "neighbourhood_group_cleansed",
  null as "neighborhood_overview",coalesce(
      try_to_decimal(regexp_replace("price", '[^0-9\.\-]', ''), 10, 2),
      try_to_decimal(regexp_replace(to_varchar("price"), '[^0-9\.\-]', ''), 10, 2)

    ) as "price",

  null as "instant_bookable",

  null as "host_url",
  null as "host_since",
  null as "host_total_listings_count",
  null as "host_response_time",
  null as "host_response_rate",
  null as "host_verifications",
  null as "host_thumbnail_url",
  null as "host_picture_url",

  null as "picture_url",

  null as "minimum_nights",
  null as "maximum_nights",
  null as "minimum_minimum_nights",
  null as "maximum_minimum_nights",
  null as "minimum_maximum_nights",
  null as "maximum_maximum_nights",
  null as "minimum_nights_avg_ntm",
  null as "maximum_nights_avg_ntm",

  null as "number_of_reviews",
  null as "number_of_reviews_ltm",
  null as "number_of_reviews_l30d",
  null as "number_of_reviews_ly",
  null as "reviews_per_month",

  null as "review_scores_rating",
  null as "review_scores_accuracy",
  null as "review_scores_cleanliness",
  null as "review_scores_checkin",
  null as "review_scores_communication",
  null as "review_scores_location",
  null as "review_scores_value"
from AIRBNB.l0.raw__amsterdam__listings__20250911

union all
select
  'paris' as city,
  to_date('20250912', 'YYYYMMDD') as snapshot_date,
  null as "listing_id",
  null as "listing_url",
  null as "name",
  null as "source",
  null as "last_scraped",
  null as "last_review",

  null as "latitude",
  null as "longitude",
  null as "license",

  null as "property_type",
  null as "room_type",

  null as "neighbourhood",
  null as "neighbourhood_cleansed",
  null as "neighbourhood_group_cleansed",
  null as "neighborhood_overview",coalesce(
      try_to_decimal(regexp_replace("price", '[^0-9\.\-]', ''), 10, 2),
      try_to_decimal(regexp_replace(to_varchar("price"), '[^0-9\.\-]', ''), 10, 2)

    ) as "price",

  null as "instant_bookable",

  null as "host_url",
  null as "host_since",
  null as "host_total_listings_count",
  null as "host_response_time",
  null as "host_response_rate",
  null as "host_verifications",
  null as "host_thumbnail_url",
  null as "host_picture_url",

  null as "picture_url",

  null as "minimum_nights",
  null as "maximum_nights",
  null as "minimum_minimum_nights",
  null as "maximum_minimum_nights",
  null as "minimum_maximum_nights",
  null as "maximum_maximum_nights",
  null as "minimum_nights_avg_ntm",
  null as "maximum_nights_avg_ntm",

  null as "number_of_reviews",
  null as "number_of_reviews_ltm",
  null as "number_of_reviews_l30d",
  null as "number_of_reviews_ly",
  null as "reviews_per_month",

  null as "review_scores_rating",
  null as "review_scores_accuracy",
  null as "review_scores_cleanliness",
  null as "review_scores_checkin",
  null as "review_scores_communication",
  null as "review_scores_location",
  null as "review_scores_value"
from AIRBNB.l0.raw__paris__listings__20250912

union all
select
  'barcelona' as city,
  to_date('20250914', 'YYYYMMDD') as snapshot_date,
  null as "listing_id",
  null as "listing_url",
  null as "name",
  null as "source",
  null as "last_scraped",
  null as "last_review",

  null as "latitude",
  null as "longitude",
  null as "license",

  null as "property_type",
  null as "room_type",

  null as "neighbourhood",
  null as "neighbourhood_cleansed",
  null as "neighbourhood_group_cleansed",
  null as "neighborhood_overview",coalesce(
      try_to_decimal(regexp_replace("price", '[^0-9\.\-]', ''), 10, 2),
      try_to_decimal(regexp_replace(to_varchar("price"), '[^0-9\.\-]', ''), 10, 2)

    ) as "price",

  null as "instant_bookable",

  null as "host_url",
  null as "host_since",
  null as "host_total_listings_count",
  null as "host_response_time",
  null as "host_response_rate",
  null as "host_verifications",
  null as "host_thumbnail_url",
  null as "host_picture_url",

  null as "picture_url",

  null as "minimum_nights",
  null as "maximum_nights",
  null as "minimum_minimum_nights",
  null as "maximum_minimum_nights",
  null as "minimum_maximum_nights",
  null as "maximum_maximum_nights",
  null as "minimum_nights_avg_ntm",
  null as "maximum_nights_avg_ntm",

  null as "number_of_reviews",
  null as "number_of_reviews_ltm",
  null as "number_of_reviews_l30d",
  null as "number_of_reviews_ly",
  null as "reviews_per_month",

  null as "review_scores_rating",
  null as "review_scores_accuracy",
  null as "review_scores_cleanliness",
  null as "review_scores_checkin",
  null as "review_scores_communication",
  null as "review_scores_location",
  null as "review_scores_value"
from AIRBNB.l0.raw__barcelona__listings__20250914

union all
select
  'london' as city,
  to_date('20250914', 'YYYYMMDD') as snapshot_date,
  null as "listing_id",
  null as "listing_url",
  null as "name",
  null as "source",
  null as "last_scraped",
  null as "last_review",

  null as "latitude",
  null as "longitude",
  null as "license",

  null as "property_type",
  null as "room_type",

  null as "neighbourhood",
  null as "neighbourhood_cleansed",
  null as "neighbourhood_group_cleansed",
  null as "neighborhood_overview",coalesce(
      try_to_decimal(regexp_replace("price", '[^0-9\.\-]', ''), 10, 2),
      try_to_decimal(regexp_replace(to_varchar("price"), '[^0-9\.\-]', ''), 10, 2)

    ) as "price",

  null as "instant_bookable",

  null as "host_url",
  null as "host_since",
  null as "host_total_listings_count",
  null as "host_response_time",
  null as "host_response_rate",
  null as "host_verifications",
  null as "host_thumbnail_url",
  null as "host_picture_url",

  null as "picture_url",

  null as "minimum_nights",
  null as "maximum_nights",
  null as "minimum_minimum_nights",
  null as "maximum_minimum_nights",
  null as "minimum_maximum_nights",
  null as "maximum_maximum_nights",
  null as "minimum_nights_avg_ntm",
  null as "maximum_nights_avg_ntm",

  null as "number_of_reviews",
  null as "number_of_reviews_ltm",
  null as "number_of_reviews_l30d",
  null as "number_of_reviews_ly",
  null as "reviews_per_month",

  null as "review_scores_rating",
  null as "review_scores_accuracy",
  null as "review_scores_cleanliness",
  null as "review_scores_checkin",
  null as "review_scores_communication",
  null as "review_scores_location",
  null as "review_scores_value"
from AIRBNB.l0.raw__london__listings__20250914

union all
select
  'lisbon' as city,
  to_date('20250921', 'YYYYMMDD') as snapshot_date,
  null as "listing_id",
  null as "listing_url",
  null as "name",
  null as "source",
  null as "last_scraped",
  null as "last_review",

  null as "latitude",
  null as "longitude",
  null as "license",

  null as "property_type",
  null as "room_type",

  null as "neighbourhood",
  null as "neighbourhood_cleansed",
  null as "neighbourhood_group_cleansed",
  null as "neighborhood_overview",coalesce(
      try_to_decimal(regexp_replace("price", '[^0-9\.\-]', ''), 10, 2),
      try_to_decimal(regexp_replace(to_varchar("price"), '[^0-9\.\-]', ''), 10, 2)

    ) as "price",

  null as "instant_bookable",

  null as "host_url",
  null as "host_since",
  null as "host_total_listings_count",
  null as "host_response_time",
  null as "host_response_rate",
  null as "host_verifications",
  null as "host_thumbnail_url",
  null as "host_picture_url",

  null as "picture_url",

  null as "minimum_nights",
  null as "maximum_nights",
  null as "minimum_minimum_nights",
  null as "maximum_minimum_nights",
  null as "minimum_maximum_nights",
  null as "maximum_maximum_nights",
  null as "minimum_nights_avg_ntm",
  null as "maximum_nights_avg_ntm",

  null as "number_of_reviews",
  null as "number_of_reviews_ltm",
  null as "number_of_reviews_l30d",
  null as "number_of_reviews_ly",
  null as "reviews_per_month",

  null as "review_scores_rating",
  null as "review_scores_accuracy",
  null as "review_scores_cleanliness",
  null as "review_scores_checkin",
  null as "review_scores_communication",
  null as "review_scores_location",
  null as "review_scores_value"
from AIRBNB.l0.raw__lisbon__listings__20250921
  );

