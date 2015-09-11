- view: coolpoints_transactions
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: body
    sql: ${TABLE}.body

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: points
    type: int
    sql: ${TABLE}.points

  - dimension: reason
    sql: ${TABLE}.reason

  - dimension: reciprocal
    type: yesno
    sql: ${TABLE}.reciprocal

  - dimension: sender_id
    type: int
    sql: ${TABLE}.sender_id

  - dimension: special
    sql: ${TABLE}.special

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id, users.id, users.firstname, users.lastname]

