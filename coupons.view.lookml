- view: coupons
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: code
    sql: ${TABLE}.code

  - dimension: coupon_campaign_id
    type: int
    # hidden: true
    sql: ${TABLE}.coupon_campaign_id

  - dimension_group: found
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.found_time

  - dimension: location
    sql: ${TABLE}.location

  - dimension: times_used
    type: int
    sql: ${TABLE}.times_used

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - coupon_campaigns.id
    - coupon_campaigns.name
    - users.id
    - users.firstname
    - users.lastname

