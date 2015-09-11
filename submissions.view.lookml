- view: submissions
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: attachment
    sql: ${TABLE}.attachment

  - dimension: body
    sql: ${TABLE}.body

  - dimension: contest_id
    type: int
    # hidden: true
    sql: ${TABLE}.contest_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: kind
    type: int
    sql: ${TABLE}.kind

  - dimension: user_id
    type: int
    # hidden: true
    sql: ${TABLE}.user_id

  - dimension: verified
    type: int
    sql: ${TABLE}.verified

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - contests.id
    - users.id
    - users.firstname
    - users.lastname
    - submission_comments.count

