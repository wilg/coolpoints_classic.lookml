- view: contests
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: closed
    type: yesno
    sql: ${TABLE}.closed

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: criteria
    sql: ${TABLE}.criteria

  - dimension: description
    sql: ${TABLE}.description

  - dimension: has_photo
    type: int
    sql: ${TABLE}.has_photo

  - dimension: kind
    type: int
    sql: ${TABLE}.kind

  - dimension: photo_url
    sql: ${TABLE}.photo_url

  - dimension: prize
    type: int
    sql: ${TABLE}.prize

  - dimension: title
    sql: ${TABLE}.title

  - dimension: win_message
    sql: ${TABLE}.win_message

  - dimension: win_reason
    sql: ${TABLE}.win_reason

  - measure: count
    type: count
    drill_fields: [id, submissions.count]

