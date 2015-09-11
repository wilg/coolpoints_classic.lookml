- view: coupon_campaigns
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: expires
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.expires

  - dimension: name
    sql: ${TABLE}.name

  - dimension: points
    type: int
    sql: ${TABLE}.points

  - dimension: uses
    type: int
    sql: ${TABLE}.uses

  - dimension: win_message
    sql: ${TABLE}.win_message

  - dimension: win_reason
    sql: ${TABLE}.win_reason

  - measure: count
    type: count
    drill_fields: [id, name, coupons.count]

