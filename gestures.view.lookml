- view: gestures
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: gesture_type_id
    type: int
    # hidden: true
    sql: ${TABLE}.gesture_type_id

  - dimension: replies
    type: int
    sql: ${TABLE}.replies

  - dimension: sender_id
    type: int
    sql: ${TABLE}.sender_id

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
    - users.id
    - users.firstname
    - users.lastname
    - gesture_types.id
    - gesture_types.short_name
    - gesture_types.long_name

