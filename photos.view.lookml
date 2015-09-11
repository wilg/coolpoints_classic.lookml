- view: photos
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: caption
    sql: ${TABLE}.caption

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: default
    type: yesno
    sql: ${TABLE}.`default`

  - dimension: filename
    sql: ${TABLE}.filename

  - dimension_group: last_commented
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_commented_on

  - dimension_group: last_read_comments
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.last_read_comments_at

  - dimension: title
    sql: ${TABLE}.title

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
    - filename
    - users.id
    - users.firstname
    - users.lastname
    - photo_comments.count

